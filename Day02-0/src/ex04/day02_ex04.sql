SELECT pizza_name,
	pizzeria.name,
	price
FROM menu
FULL JOIN pizzeria ON pizzeria_id = pizzeria.id
WHERE pizza_name = 'pepperoni pizza'
	OR pizza_name = 'mushroom pizza'
ORDER BY 1,2;
/*
    Найдите полную информацию обо всех возможных названиях пиццерий и ценах,
 чтобы получить пиццу с грибами или пепперони.
    Затем отсортируйте результат по названию пиццы и названию пиццерии.
    Результат выборки данных приведен ниже (пожалуйста, используйте те же имена столбцов в своем операторе SQL).


pizza_name (menu)	        pizzeria_name (pizzeria)	price(menu)
mushroom pizza      	    Dominos	                    1100
mushroom pizza  	        Papa Johns	                950
pepperoni pizza 	        Best Pizza	                800
...	...	...
*/
