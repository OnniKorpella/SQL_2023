SELECT name,
       count(PO.id) AS count_of_orders,
       ROUND(AVG(M.price),2) AS average_price,
       MAX(M.price) AS max_price,
       MIN(M.price) AS min_price
FROM pizzeria P
JOIN menu M           ON M.pizzeria_id = P.id
JOIN person_order  PO ON PO.menu_id    = M.id
GROUP BY name
ORDER BY name


/* 
который возвращает 
1 - количество заказов,         order
2 - среднюю цену,               menu
3 - максимальную и              menu
4 - минимальную цены на пиццу,  menu
5 - проданную соответствующим рестораном-пиццерией.  

 - Результат должен быть отсортирован по названию пиццерии. 
 - Пожалуйста, взгляните на образец данных ниже. 
 - Округлите среднюю цену до 2 плавающих чисел.

name	    |count_of_orders	  |  average_price	|    max_price   |	min_price
------------|---------------------|-----------------|----------------|-----------
Best Pizza	|    5	              |  780	        |    850	     |      700
DinoPizza	|    5	              |  880	        |    1000        |    	800
...         	...             	 ...	              ...           	...




 */