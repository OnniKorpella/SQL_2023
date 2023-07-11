WITH qwe AS (
SELECT t1::date AS missing_date
FROM generate_series ('2022-01-1', '2022-01-10', interval '1 day') AS t1
LEFT JOIN
    (SELECT *
     FROM person_visits
     WHERE person_id = 1
         OR person_id = 2) AS t2 ON t1 = t2.visit_date
WHERE t2 IS NULL)
SELECT *
from qwe cte;
/* Вернемся к упражнению № 01. Пожалуйста, перепишите свой SQL, используя шаблон CTE (Common Table Expression). Пожалуйста, перейдите в часть CTE вашего "дневного генератора". Результат должен быть таким же, как в упражнении № 01.
*/