SELECT DISTINCT name
FROM person_order
FULL JOIN menu ON menu.id = person_order.menu_id
FULL JOIN person ON person.id = person_order.person_id
WHERE gender = 'male'
				AND address = 'Moscow'
				OR address = 'Samara'
				AND pizza_name = 'pepperoni pizza'
				OR pizza_name = 'mushrooms pizza'
order by name desc;

/* найдите имена (person.name)
   всех мужчин ( person.gender = male)
   из Москвы или Самары (person.address = Moscow = Samara),
 которые заказывают либо пепперони, либо грибную пиццу (или и то, и другое) (menu.pizza_name = 'pepperoni pizza' еще/или =  'mushroom pizza') .
 Упорядочить результат по имени человека в порядке убывания (order by name desc);

 name
 Dmitriy
 ...
 */