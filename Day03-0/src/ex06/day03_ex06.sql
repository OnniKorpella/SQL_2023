SELECT     
    M1.pizza_name,
    P1.name AS pizzeria_name_1,
    P2.name AS pizzeria_name_2,
    M1.price
FROM menu       AS M1
JOIN menu       AS M2 ON M1.price   = M2.price
JOIN pizzeria   AS P1 ON P1.id      = M1.pizzeria_id
JOIN pizzeria   AS P2 ON P2.id      = M2.pizzeria_id
    WHERE M1.id > M2.id AND M1.pizza_name = M2.pizza_name
ORDER BY 1;

/* по оной цене вывести все пицци из разных пиццерий

найдите одинаковые названия пиццы[menu.pizza_name ],
которые имеют одинаковую цену[menu.price],
но из разных пиццерий[pizzeria.id]. 
Убедитесь, что результат упорядочен по названию пиццы.

pizza_name	    pizzeria_name_1	    pizzeria_name_2	    price
--------------|------------------|------------------|--------
cheese pizza	Best Pizza	        Papa Johns	        700
...	            ...	                ...	                ...
 */