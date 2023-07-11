/* Напишите 2 оператора SQL, которые
 возвращают список названий пиццерий(pizzeria.name),
 которые не были посещены людьми, используя IN для первого и EXISTS для второго.

 */ 
SELECT name
FROM pizzeria
WHERE name NOT IN
        (SELECT DISTINCT name
         FROM pizzeria
         JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id);


SELECT name
FROM pizzeria
WHERE NOT EXISTS
								(SELECT pizzeria_id
									FROM person_visits
									WHERE pizzeria_id = pizzeria.id);

/*  таблицы должны иметь совпадающие, по имени, столбцы

 Описание
 SQL условие IN (иногда называемое оператором IN) позволяет легко проверить, соответствует ли выражение какому-либо значению в списке значений. Он используется, чтобы помочь уменьшить потребность в нескольких условиях OR в операторе SELECT, INSERT, UPDATE или DELETE.

 Синтаксис
 Синтаксис условия IN в SQL:

 expression IN (value1, value2, .... value_n);

 Описание
 SQL условие EXISTS используется в сочетании с подзапросом и считается выполненным, если подзапрос возвращает хотя бы одну строку. Его можно использовать в операторе SELECT, INSERT, UPDATE или DELETE.

 Синтаксис
 Синтаксис условия EXISTS в SQL:

 WHERE EXISTS ( subquery );
 */