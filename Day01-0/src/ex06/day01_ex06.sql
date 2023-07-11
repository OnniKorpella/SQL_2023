/* Давайте вернемся к упражнению №03(вывести из  person_id и person_visits даты и id_person)
 и изменим наш SQL-запрос, чтобы возвращать имена людей вместо их идентификаторов, а также изменим упорядочивание по дате действия (action_date) по возрастанию, а затем по имени_человека (person_name) по убыванию. Пожалуйста, посмотрите на пример данных ниже. */
SELECT order_date AS action_date,

    (SELECT name
     from person
     where person.id = person_order.person_id ) as person_name
FROM person_order INTERSECT
SELECT visit_date,

    (SELECT name
     from person
     where person.id = person_visits.person_id ) as person_name
FROM person_visits
ORDER BY 1,
         2 DESC;