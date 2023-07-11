SELECT name, count(person_id) AS count_of_visits
FROM person_visits 
LEFT JOIN person ON person_visits.person_id = person.id
GROUP BY 1
ORDER BY 2 DESC,1
LIMIT 4 ;

/* 
Измените оператор SQL из упражнения 00 и верните имя человека (не идентификатор). 
Дополнительным пунктом является то, 
что нам нужно видеть только топ-4 людей с максимальным количеством посещений 
в любых пиццериях и отсортированных по имени человека. 
Пожалуйста, взгляните на пример выходных данных ниже.

name	      |  count_of_visits
--------------|-----------------
Dmitriy	      |  4              
Denis	      |  3              
...	          |  ...            

 */