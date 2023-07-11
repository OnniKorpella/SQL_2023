/* Пожалуйста, напишите SQL-запрос, который возвращает разницу значений столбца

 person_id  в person_order и person_visits с сохранением дубликатов между таблицей

 для дат order_date и visit_date за 7 января 2022 года.
 Allowed Language ANSI SQL
 */
SELECT person_id
FROM person_order
WHERE order_date = '2022-01-07'
EXCEPT ALL
SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-07';

/* SQL оператор EXCEPT используется для возврата всех строк в
 первом операторе SELECT, которые не возвращаются вторым оператором
 SELECT. Каждый оператор SELECT будет определять набор данных.
 Оператор EXCEPT извлечет все записи из первого набора данных,
 а затем удалит из результатов все записи из второго набора данных. */