CREATE UNIQUE INDEX  idx_person_order_order_date ON person_order (person_id, menu_id)
    WHERE order_date = '2022-01-01';

SET enable_seqscan = OFF;
EXPLAIN ANALYSE
SELECT person_id, menu_id
FROM person_order
WHERE order_date = '2022-01-01';
/* 

Пожалуйста, создайте частичный уникальный индекс BTree с именем idx_person_order_order_date
в таблице person_order для атрибутов person_id и menu_id
с частичной уникальностью для столбца order_date для даты «2022-01-01».
Команда EXPLAIN ANALYZE должна возвращать следующий шаблон.

Index Only Scan using idx_person_order_order_date on person_order …
 */