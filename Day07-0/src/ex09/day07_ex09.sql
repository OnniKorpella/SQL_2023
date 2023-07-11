WITH numer AS 
    (
    SELECT id, age::numeric, address
    FROM person
    )

SELECT address
        , ROUND(MAX(age) - (MIN(age) / MAX(age)),2)
        AS formula
        , ROUND(AVG (age) ,2)
        AS average
        , ( ROUND(MAX(age) - (MIN(age) / MAX(age)),2)) > (ROUND(AVG (age) ,2)) AS comparison
FROM numer
GROUP BY address
ORDER BY 1;
;
/* 

Пожалуйста, напишите оператор SQL, 
который возвращает 
агрегированную информацию по адресу человека,
результат «Максимальный возраст - (минимальный возраст / максимальный возраст)», v

который представлен в виде столбца формулы,
следующий - средний возраст по адресу и результат сравнения между формулой и средние столбцы
(другими словами, если формула больше среднего, то значение True, в противном случае значение False).
Результат должен быть отсортирован по столбцу адреса.
 Пожалуйста, взгляните на образец выходных данных ниже.


 address	|formula	|average 	|comparison
 -----------|-----------|-----------|----
Kazan	    |44.71	    |30.33   	|true
Moscow	    |20.24	    |18.5	    |true
...	        |...     	|...	    | ...
 
  */