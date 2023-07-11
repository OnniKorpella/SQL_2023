SELECT generated_date as missing_date
FROM v_generated_dates
EXCEPT
SELECT visit_date 
FROM person_visits
ORDER BY 1;


/* 
напишите оператор SQL,который возвращает пропущенные дни для посещений людей в январе 2022 года.
Используйте представление
v_generated_dates
для этой задачи и отсортируйте результат по столбцу
missing_date.
Образец данных представлен ниже.

missing_date
2022-01-11
2022-01-12
...
 */