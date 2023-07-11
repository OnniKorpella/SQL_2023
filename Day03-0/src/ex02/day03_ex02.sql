WITH foo (menu_id) AS
    (SELECT id AS menu_id
     FROM menu
     EXCEPT SELECT menu_id
     FROM person_order)
SELECT menu.pizza_name,
       menu.price,
       pizzeria.name AS pizzeria_name
FROM menu
JOIN foo        ON foo.menu_id      = menu.id
JOIN pizzeria   ON menu.pizzeria_id = pizzeria.id
ORDER BY 1,
         2;

/*
используйте оператор SQL из упражнения № 01
и покажите названия пицц из пиццерии,
которые никто не заказывал,
включая соответствующие цены.

Результат должен быть отсортирован по названию пиццы и цене.

pizza_name	    |price	    |pizzeria_name
-------------------------------------
cheese pizza	|700	    |Papa Johns
cheese pizza	|780	    |DoDo Pizza
...	...	...

*/