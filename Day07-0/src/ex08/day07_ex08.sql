SELECT  P.address
        ,PZ.name
        ,count(P.name) AS count_of_orders
        -- ,count(person_id)

FROM pizzeria AS PZ
JOIN menu         AS M  ON M.pizzeria_id = PZ.id 
JOIN person_order AS PO ON PO.menu_id    = M.id 
JOIN person       AS P  ON P.id          = PO.person_id
GROUP BY P.address ,
        PZ.name
ORDER BY 1, 2
;

/* 
Мы знаем о личных адресах из наших данных. 
Представим, что этот конкретный человек посещает пиццерии только в своем городе. 
Пожалуйста, напишите оператор SQL, 

который возвращает 
                    адрес, 
                    название пиццерии и 
                    количество заказов. 

Результат должен быть отсортирован по адресу, а 
                                      затем по названию ресторана. 
Пожалуйста, взгляните на образец выходных данных ниже.

address	 name	    count_of_orders
Kazan	 Best Pizza	   4
Kazan	 DinoPizza	   4
...	...	...

 */