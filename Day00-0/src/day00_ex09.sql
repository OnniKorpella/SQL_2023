SELECT (SELECT name
		FROM person
		WHERE person.id = pv.person_id) AS person_name ,  -- this is an internal query in a main SELECT clause
        (SELECT name
		FROM pizzeria
		WHERE pizzeria.id = pv.pizzeria_id) AS pizzeria_name  -- this is an internal query in a main SELECT claus -- this is an internal query in a main FROM clause
from (select * from person_visits where visit_date between '2022-01-07' and '2022-01-09') as pv
ORDER BY person_name ASC, pizzeria_name DESC;

select (select name
 from person
 where person.id = pv.person_id) as person_name, 
 (select name
 from pizzeria
 where pizzeria.id = pv.pizzeria_id) as pizzeria_name
from (select * from person_visits where visit_date between '2022-01-07' and '2022-01-09') as pv
order by person_name, pizzeria_name desc;
