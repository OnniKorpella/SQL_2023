SET enable_seqscan = OFF;

EXPLAIN ANALYZE 
SELECT pizza_name,
        name AS pizzeria_name
FROM menu AS M
JOIN pizzeria AS P ON P.id = M.pizzeria_id;



SELECT name, rating
FROM pizzeria
WHERE rating BETWEEN 3.5 AND 5
ORDER BY rating;

*
Перед дальнейшими шагами,
 пожалуйста, напишите инструкцию SQL,
 которая возвращает названия пицц 
 и соответствующих пиццерий.
 Пожалуйста, взгляните на образец результата ниже (сортировка не требуется).

pizza_name  	| pizzeria_name
----------------|--------------
cheese pizza	| Pizza Hut
...	            | ...


Давайте предоставим доказательства того,
 что ваши индексы работают для вашего SQL.
 Образцом доказательства является вывод команды EXPLAIN ANALYZE.
 Пожалуйста, взгляните на пример команды вывода.
...
->  Index Scan using idx_menu_pizzeria_id on menu m  (...)
...
Подсказка: пожалуйста, подумайте, почему ваши индексы не работают напрямую и что мы должны сделать, чтобы включить это?


 */