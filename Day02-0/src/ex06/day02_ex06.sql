SELECT menu.pizza_name AS pizza_name,
	pizzeria.name AS pizzeria_name
FROM person_order
JOIN menu ON menu.id = menu_id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
JOIN person ON person.id = person_order.person_id
WHERE person.name = 'Anna'
	OR person.name = 'Denis'
ORDER BY 1,
		 2;