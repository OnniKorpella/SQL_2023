--Пожалуйста, измените инструкцию SQL из “упражнения 00”,
--удалив столбец object_id. Затем измените порядок по object_name для
--части данных из personтаблицы, а затем из menuтаблицы (как показано в примере ниже). Пожалуйста, сохраните дубликаты!

    (SELECT name AS object_name
     FROM person
     ORDER BY object_name)
UNION
ALL
    (SELECT pizza_name
     FROM menu
     ORDER BY pizza_name);