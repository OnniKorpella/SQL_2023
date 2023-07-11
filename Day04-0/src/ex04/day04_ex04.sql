CREATE VIEW v_symmetric_union AS ((SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-02'
    EXCEPT
SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-06')
    UNION
(SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-06'
    EXCEPT
SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-02'));


/* 
напишите оператор SQL, который удовлетворяет формуле (R - S)∪(S - R) .
 Где R — это таблица       person_visits с фильтром на 2 января 2022 года,
     S — это также таблица person_visits,с фильтром на 6 января 2022 года.
сделайте расчеты с наборами в столбце person_id, и этот столбец будет единственным в результате.
 Отсортируйте результат по столбцу person_id и окончательный SQL-код, пожалуйста, представьте в виде базы данных v_symmetric_union  */