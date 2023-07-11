
    (SELECT pizzeria.name AS pizzeria_name
     FROM person_visits
     JOIN person ON person.id = person_visits.person_id
     JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
     WHERE person.name = 'Andrey')
EXCEPT
    (SELECT pizzeria.name AS pizzeria_name
     FROM pizzeria
     JOIN menu ON menu.pizzeria_id = pizzeria.id
     JOIN person_order ON person_order.menu_id = menu.id
     JOIN person ON person_order.person_id = person.id
     WHERE person.name = 'Andrey') ;

/*

список пиццерий     [pizzeria.name],
которые Андрей      [person.name = 'Andrey']
посещал             [person_visits.person_id],
но не делал заказов [person_orders.person_id].
отсортировать по названию пиццерии.

 */