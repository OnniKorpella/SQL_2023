SELECT name
FROM person_order
JOIN person ON person.id = person_order.person_id
JOIN menu ON menu.id = person_order.menu_id
WHERE person.gender = 'female'
	AND menu.pizza_name = 'pepperoni pizza'
	AND person_order.person_id IN
		(SELECT person_order.person_id
			FROM person_order
			JOIN person ON person.id = person_order.person_id
			JOIN menu ON menu.id = person_order.menu_id
			WHERE gender = 'female'
				AND menu.pizza_name = 'cheese pizza' )
ORDER BY 1;

/*
Пожалуйста, найдите имена [person.name] всех женщин[person.gender],
которые заказывали и пепперони[menu.pizza_name = 'pepperoni pizza'],
и сырную пиццу[menu.pizza_name = 'cheese pizza'] (в любое время и в любых пиццериях).
Убедитесь, что результат упорядочен по имени человека.
[order by name desc]

name
Anna
...
 */