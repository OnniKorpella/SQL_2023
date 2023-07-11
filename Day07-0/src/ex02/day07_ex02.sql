WITH visit AS (
                SELECT 
                    name, 
                    COUNT(person_id) AS count, 
                    'visit' AS action_type
                FROM person_visits
                    INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
                GROUP BY name
                ORDER BY action_type ASC,
                                count DESC
                LIMIT 3
              ),

    order1 AS (
                SELECT 
                    pizzeria.name,
                    COUNT(person_id) AS count, 
                    'order' AS action_type
                FROM person_order
                    INNER JOIN menu ON menu.id = person_order.menu_id
                    INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
                GROUP BY name
                ORDER BY action_type ASC,
                                count DESC
                LIMIT 3
            )

SELECT *
FROM visit
UNION ALL
SELECT *
FROM order1
ORDER BY action_type ASC, count DESC;




/* 
Напишите оператор SQL, чтобы увидеть, как рестораны группируются по посещениям и заказам и соединяются друг с другом по имени ресторана.
Вы можете использовать внутренние SQL-запросы из упражнения 02 (рестораны по посещениям и по заказам) без ограничений по количеству строк.

Кроме того, пожалуйста, добавьте следующие правила.

подсчитать сумму заказов и посещений соответствующей пиццерии (учтите, что не все ключи пиццерии представлены в обеих таблицах).
сортировать результаты по столбцу total_count по убыванию и по имени по возрастанию. Взгляните на образец данных ниже.
 */
 
