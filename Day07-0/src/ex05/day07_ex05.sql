SELECT DISTINCT name 
FROM person
JOIN person_order ON person_order.person_id = person.id
ORDER BY 1;


/* 

Пожалуйста, напишите простой SQL-запрос,
который возвращает список уникальных имен людей, 
которые делали заказы в любых пиццериях. 
Результат должен быть отсортирован по имени человека. 
Пожалуйста, взгляните на образец ниже. 

Syntax construction	GROUP BY, any type (UNION,...) working with sets

*/