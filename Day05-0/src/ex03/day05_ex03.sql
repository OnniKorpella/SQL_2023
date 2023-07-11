
CREATE INDEX idx_person_order_multi ON person_order (person_id, menu_id);

SET enable_seqscan = ON;
SET enable_seqscan = OFF;

EXPLAIN ANALYZE
--  SELECT person_id, menu_id,order_date
 SELECT person_id, menu_id
FROM person_order
WHERE person_id = 8 AND menu_id = 19;
/* 
Пожалуйста, создайте лучший многоколоночный индекс B-Tree
 с именем idx_person_order_multi для инструкции SQL ниже.
SELECT person_id, menu_id,order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 19;


Команда EXPLAIN ANALYZE должна вернуть следующий шаблон. 
Обратите внимание на сканирование "Index Only Scan"!

Index Only Scan using idx_person_order_multi on person_order ...

Предоставьте любой SQL с доказательством (EXPLAIN ANALYZE) того, что индекс idx_person_order_multi работает.

 */