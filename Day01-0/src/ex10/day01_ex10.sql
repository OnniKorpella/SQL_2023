-- /*
-- возвращает список имен(person.name AS person_name) людей,
-- сделавших заказ на пиццу (menu.pizza_name)
-- в соответствующей пиццерии(pizzeria.name).
 -- Пример результата (с именованными столбцами) приведен ниже, и да... пожалуйста, сделайте упорядочивание по 3 столбцам по возрастанию.
--  */
-- SELECT person.name AS person_name,
-- 	pizza_name,
-- 	pizzeria.name AS pizzeria_name
-- FROM person
-- JOIN person_order ON person.id = person_order.person_id
-- JOIN menu ON person_order.menu_id = menu.id
-- JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
-- ORDER BY person_name,
-- 	pizza_name,
-- 	pizzeria_name;

SELECT person.name AS person_name,
	pizza_name,
	pizzeria.name AS pizzeria_name
FROM person
JOIN person_order ON person.id = person_order.person_id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY person_name,
	pizza_name,
	pizzeria_name;