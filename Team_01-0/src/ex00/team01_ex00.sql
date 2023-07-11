
with value_eur as (SELECT * FROM currency where name = 'EUR' order by updated DESC LIMIT 1),
value_usd as (SELECT * FROM currency where name ='USD' ORDER BY updated DESC LIMIT 1),
value_jpy as (SELECT * FROM currency where name ='JPY' ORDER BY updated DESC LIMIT 1),
max_result as (SELECT * FROM value_eur union SELECT * FROM value_usd union SELECT * FROM value_jpy)

SELECT 
(CASE WHEN "user".name IS NULL
    THEN 'is not defined'
   WHEN "user".name IS NOT NULL
     THEN "user".name
  END),
(CASE WHEN "user".lastname IS NULL
    THEN 'is not defined'
   WHEN "user".lastname IS NOT NULL
     THEN "user".lastname
  END),
balance.type,
sum(balance.money) volume,
(CASE WHEN max_result.name IS NULL
    THEN 'is not defined'
   WHEN max_result.name IS NOT NULL
     THEN max_result.name
  END) currency_name,
(CASE WHEN max_result.rate_to_usd IS NULL
    THEN 1
   WHEN max_result.rate_to_usd IS NOT NULL
     THEN max_result.rate_to_usd
  END) last_rate_to_usd,
(CASE WHEN max_result.rate_to_usd IS NULL
    THEN 1 * sum(balance.money)
   WHEN max_result.rate_to_usd IS NOT NULL
     THEN max_result.rate_to_usd * sum(balance.money)
  END) total_volume_in_usd
FROM "user"
FULL JOIN balance ON balance.user_id = public."user".id
FULL JOIN max_result ON balance.currency_id = max_result.id
GROUP BY "user".name, "user".lastname, balance.type, currency_name, max_result.rate_to_usd
ORDER BY 1 DESC, 2, 3;




-----------------------------------------------------------------------------------


select balanced.name, lastname, type, volume,
	coalesce(cur.name, '<not defined>') as currency_name,
	coalesce(rate_to_usd, 1) as last_rate_to_usd,
	volume::numeric * coalesce(rate_to_usd, 1) as total_volume_in_usd
from (select coalesce("user".name, '<not defined>') as name,
	 		coalesce("user".lastname, '<not defined>') as lastname,
	 		type, t1.sum as volume, t1.currency_id
	 from (select user_id, sum(money) as sum,
		  		type, currency_id
		  from balance
		  group by user_id, type, currency_id
		  order by 1) as t1 full join "user" on id = t1.user_id) as balanced
	 full join
	 (select distinct * from currency
	 where updated = (select max(updated) from currency)) as cur
	 on currency_id = cur.id
order by 1 desc, 2, 3;

-----------------------------------------------------------------------------------

WITH cte_last_rate_to_usd AS (
    SELECT
        currency.id,
        currency.name AS currency_name,
        (SELECT rate_to_usd FROM currency
            WHERE currency.updated IN (SELECT MAX(currency.updated) FROM currency)
            AND id = balance.currency_id) AS last_rate
    FROM currency
    INNER JOIN balance ON currency.id = balance.currency_id
    GROUP BY currency.id, currency_name, balance.currency_id
)
SELECT
    COALESCE("user".name, 'not defined') AS name,
    COALESCE("user".lastname, 'not defined') AS lastname,
    balance.type,
    SUM(COALESCE(balance.money, 1)) AS volume,
    COALESCE(currency_name, 'not defined') AS currency_name,
    COALESCE(last_rate, 1) AS last_rate_to_usd,
    SUM(COALESCE(balance.money, 1)) * COALESCE(last_rate, 1) AS total_volume_in_usd
FROM balance
FULL JOIN "user" ON "user".id = balance.user_id
LEFT JOIN cte_last_rate_to_usd ON balance.currency_id = cte_last_rate_to_usd.id
GROUP BY type, "user".id, "user".name, lastname, currency_name, last_rate
ORDER BY name DESC, lastname, type;