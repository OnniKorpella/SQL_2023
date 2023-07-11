
CREATE INDEX idx_person_name ON person(upper(name));
SET enable_seqscan = OFF;
EXPLAIN ANALYSE
SELECT *
FROM person
WHERE upper(name) = 'Peter';

/* 
Создайте функциональный индекс B-Tree 
с именем idx_person_name 
для имени столбца таблицы person.
 Индекс должен содержать имена людей в верхнем регистре.
Пожалуйста, напишите и предоставьте любой SQL с доказательством (EXPLAIN ANALYZE) 
того, что индекс idx_person_name работает.
 */