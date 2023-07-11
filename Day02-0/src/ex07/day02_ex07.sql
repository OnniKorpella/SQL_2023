SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
FULL JOIN menu ON pizzeria.id = menu.pizzeria_id
FULL JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
FULL JOIN person ON person.id = person_visits.person_id
WHERE person.name = 'Dmitriy'
	AND menu.price < 800
	AND person_visits.visit_date = '2022-01-08';

/* Найдите, пожалуйста,
название пиццерии(pizzeria.name AS pizzeria_name), которую Дмитрий(person.name = Dmitriy)
посетил 8 января 2022 года (person_visits.visit_date = '2022-01-08')
 и смог съесть пиццу менее чем за 800 рублей(menu.price < 800)
 */