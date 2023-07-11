select name,
        count(person_id) AS count_of_visits
FROM person_visits AS PV
    JOIN person    AS P  ON P.id = PV.person_id
GROUP BY 1
HAVING count(person_id) > 3
;

/* 
Пожалуйста, напишите оператор SQL, 
который возвращает имя человека[person.name] 
и соответствующее количество посещений[person_visits.person_id] 
в любой пиццерии[pizzeria.name],
если человек посетил более 3 раз (> 3). 
Пожалуйста, взгляните на образец данных ниже.
 */