SELECT t1::date AS missing_date
FROM generate_series ('2022-01-1', '2022-01-10', interval '1 day') AS t1
LEFT JOIN
    (SELECT *
     FROM person_visits
     WHERE person_id = 1
         OR person_id = 2) AS t2 ON t1 = t2.visit_date
WHERE t2 IS NULL;
/* Please write a SQL statement which returns
the missing days from 1st to 10th of January
2022 (including all days) for visits of persons
with identifiers 1 or 2. Please order by visiting
days in ascending mode. The sample of data with column name is presented below.

Пожалуйста, напишите оператор SQL,
который возвращает пропущенные дни с 1 по 10 января 2022 года (включая все дни)
для посещений лиц с идентификаторами 1 или 2.
Упорядочьте по дням посещения по возрастанию.
Образец данных с именем столбца представлен ниже

Allowed generate_series(...)
Denied	NOT IN, IN, NOT EXISTS, EXISTS, UNION, EXCEPT, INTERSECT
    missing_date
    2022-01-03
    2022-01-04
    2022-01-05
    (вывести дни в которые не ходили люди номер 1 и 2)

GENERATE_SERIES ( start, stop [, step ] )
SELECT *
FROM GENERATE_SERIES(1, 10, 0.5);
*/