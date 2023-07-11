--Пожалуйста, напишите инструкцию SQL, которая возвращает уникальные названия пиццы из menu таблицы и заказы по столбцу
-- pizza_name в режиме убывания. Пожалуйста, обратите внимание на раздел "Отказано".
SELECT
    pizza_name
FROM
    menu
UNION
(
    SELECT
        pizza_name
    FROM
        menu
)
ORDER BY
    1 DESC;