/* Напишите SQL-запрос, который возвращает все возможные
 комбинации между таблицами person и pizzeria и установите
 упорядочивание по столбцам идентификатора person, а затем
 по столбцам идентификатора pizzeria. Пожалуйста, посмотрите
 на пример результата ниже. Обратите внимание, что названия столбцов могут быть другими. 
 person.id	person.name	age	gender	address	pizzeria.id	pizzeria.name	rating
 */
SELECT person.id AS "person.id",
       person.name AS "person.name",
       person.age,
       person.gender,
       person.address,
       pizzeria.id as "pizzeria.id",
       pizzeria.name AS "pizzeria.name",
       pizzeria.rating
FROM person
CROSS JOIN pizzeria
ORDER BY person.id,
         pizzeria.id;