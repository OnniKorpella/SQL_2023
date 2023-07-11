WITH visitOder AS (
                    (SELECT 
                        name, 
                        COUNT(person_id) AS count, 
                        'visit' AS action_type
                    FROM person_visits
                        JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
                    GROUP BY name)
                    
                    UNION
                    
                    (
                    SELECT 
                        pizzeria.name,
                        COUNT(person_id) AS count, 
                        'order' AS action_type
                    FROM person_order
                        JOIN menu ON menu.id = person_order.menu_id
                        JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
                    GROUP BY name
                    )
                )

SELECT name,
        sum(count) AS total_count
FROM visitOder
GROUP BY name
ORDER BY 2 DESC, 1;
;


/* Напишите оператор SQL, чтобы увидеть, 
как рестораны группируются по посещениям и заказам и соединяются друг с другом по имени ресторана.
Вы можете использовать внутренние SQL-запросы из упражнения 02 
(рестораны по посещениям и по заказам) без ограничений по количеству строк.

Кроме того, пожалуйста, добавьте следующие правила.

подсчитать сумму заказов и посещений соответствующей пиццерии 
(учтите, что не все ключи пиццерии представлены в обеих таблицах).
сортировать результаты по столбцу total_count по убыванию и по имени по возрастанию.
Взгляните на образец данных ниже. 

name		|total_count
------------|-----------
Dominos		|13         
DinoPizza	|9          
...			|...        

*/


