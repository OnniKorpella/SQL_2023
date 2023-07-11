select      T1.name AS person_name1,
     T2.name AS person_name2,
     T2.address AS common_address
from person AS T1,
     person AS T2
where T1.name != T2.name
    AND T1.address = T2.address
    AND T1.id > T2.id
    ORDER BY 1, 2, 3;

/*
найдите имена людей[person.name ], которые живут по тому же адресу [person.address ]
Убедитесь, что результат упорядочен по имени 1-го лица, имени 2-го лица и общему адресу.
Образец данных представлен ниже. Пожалуйста, убедитесь, что ваши имена столбцов соответствуют именам столбцов ниже.


person_name1 person_name2 common_address
Andrey        Anna			Moscow
Denis		  Kate 			Kazan
Elvira		  Denis			Kazan

 */
--  SELECT
--      p1.name AS person_name1,
--      p2.name AS person_name2,
--      p2.address AS common_address 
--  FROM person AS p1, person AS p2
--  WHERE p1.name != p2.name
--      AND p1.address = p2.address
--      AND p1.id > p2.id
--  ORDER BY 1, 2, 3;