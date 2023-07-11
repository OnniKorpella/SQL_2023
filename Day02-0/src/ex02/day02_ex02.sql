SELECT COALESCE (person.name,
                 '-') AS person_name,
                visit_date,
                COALESCE (pizzeria.name,
                          '-') AS pizzeria_name
FROM person
FULL JOIN
    (SELECT distinct visit_date,
                     pizzeria_id,
                     person_id
     from person_visits
     where visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS t2 ON t2.person_id = person.id
FULL JOIN pizzeria ON pizzeria.id = t2.pizzeria_id
order by 1,
         2,
         3;
/* Allowed Language	ANSI SQL
Denied SQL Syntax Construction	NOT IN, IN, NOT EXISTS, EXISTS, UNION, EXCEPT, INTERSECT
Please write a SQL statement that returns a whole list of person names visited (or not visited) pizzerias during the period from 1st to 3rd of January 2022 from one side and the whole list of pizzeria names which have been visited (or not visited) from the other side. The data sample with needed column names is presented below. Please pay attention to the substitution value ‘-’ for NULL values in person_name and pizzeria_name columns. Please also add ordering for all 3 columns.
Пожалуйста, напишите SQL-запрос,
который возвращает полный список имен людей,
посещенных (или не посещенных) пиццериями в период с 1 по 3 января 2022 года с одной стороны,
 и весь список названий пиццерий, которые были посещены (или не посещались)
 с другой стороны. Образец данных с необходимыми названиями столбцов представлен ниже.
 Пожалуйста, обратите внимание на значение замены ‘-’ для нулевых значений в столбцах person_name и pizzeria_name.
 Пожалуйста, также добавьте порядок для всех 3 столбцов.

person_name	visit_date	pizzeria_name
        -	    null	DinoPizza
        -	    null	DoDo Pizza
Andrey	    2022-01-01	Dominos
Andrey	    2022-01-02	Pizza Hut
Anna	    2022-01-01	Pizza Hut
Denis	        null	    -
Dmitriy	        null	    -
...	...	...
вернуть person_name	visit_date	pizzeria_name
если посещений небыло то
*/