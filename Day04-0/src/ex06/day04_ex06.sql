CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
(
	SELECT pizzeria.name AS pizzeria_name
	FROM pizzeria
		FULL JOIN menu ON pizzeria.id = menu.pizzeria_id
		FULL JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
		FULL JOIN person ON person.id = person_visits.person_id
	WHERE person.name = 'Dmitriy'
		AND menu.price < 800
		AND person_visits.visit_date = '2022-01-08'
)
WITH DATA;

/* 
создайте материализованное представление mv_dmitriy_visits_and_eats (с включенными данными)
 на основе оператора SQL, который находит название пиццерии, 
 которую Дмитрий посетил 8 января 2022 года и мог съесть пиццу менее чем за 800 рублей (этот SQL вы можете узнать в День #02, упражнение #). 07).
 Чтобы проверить себя, вы можете написать SQL для Materialized View mv_dmitriy_visits_and_eats и сравнить результаты с вашим предыдущим запросом.
 */