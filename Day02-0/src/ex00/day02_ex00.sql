SELECT name,
       rating
FROM pizzeria t1
LEFT JOIN person_visits t2 on t1.id = t2.pizzeria_id
WHERE pizzeria_id is NULL;
/*
Напишите инструкцию SQL, которая возвращает
список имен пиццерий с соответствующим значением рейтинга, которые не были посещены пользователями.
Denied	NOT IN, IN, NOT EXISTS, EXISTS, UNION, EXCEPT, INTERSECT
 */
