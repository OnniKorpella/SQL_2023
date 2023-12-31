/* Напишите SQL-запрос, который возвращает дату заказа из таблицы person_order
и соответствующее имя человека (имя и возраст отформатированы как в примере данных ниже),
который сделал заказ из таблицы person.

Добавьте сортировку по обоим столбцам в режиме возрастания. */
SELECT order_date,

    (SELECT CONCAT (name, ' (age:', age, ')')
     FROM person
     WHERE person.id = person_order.person_id ) AS person_information
FROM person_order
ORDER BY 1,
         2;

/*
CONCAT предназначена для сложения строк при выборке из базы данных. Строками обычно выступают поля таблиц.
SELECT *, CONCAT(name, '!!!') as name FROM workers */