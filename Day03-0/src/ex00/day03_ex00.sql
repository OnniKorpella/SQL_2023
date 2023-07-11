
SELECT pizza_name,
       price,
       pizza_name AS pizzeria_name,
       visit_date
FROM menu AS M
JOIN pizzeria AS PI         ON M.pizzeria_id = PI.id
JOIN person_visits AS PV    ON PV.pizzeria_id = PI.id
JOIN person AS PE           ON PE.id = PV.person_id
WHERE PE.name = 'Kate'
    AND M.price BETWEEN 800 AND 1000
ORDER BY 1,
         2,
         3;

/*
возвращает список названий пицц [menu.pizza_name], цен [menu.prise]
на пиццы, названий пиццерий [pizzeria.neme]
и дат посещения [person_visits.visit_date] для Кати [person.name = 'Kate']
и цен в диапазоне от 800 до 1000 рублей [menu.prise >= 800 < 1000 ].

Сортируйте по пицце, цене и названию пиццерии.
ORDER BY pizza_name, price, pizzeria_name


pizza_name	        price	pizzeria_name	visit_date
cheese pizza	    950	    DinoPizza	    2022-01-04
pepperoni pizza	    800	    Best Pizza  	2022-01-03
pepperoni pizza	    800	    DinoPizza	    2022-01-04
...	                ...	    ...	            ...
*/