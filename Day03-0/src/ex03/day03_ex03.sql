WITH female AS
    (SELECT pizzeria.name
     FROM person_visits
     JOIN person    ON person.id    = person_visits.person_id
     JOIN pizzeria  ON pizzeria.id  = person_visits.pizzeria_id
     WHERE gender = 'female'),
     male AS
    (SELECT pizzeria.name
     FROM person_visits
     JOIN person    ON person.id    = person_visits.person_id
     JOIN pizzeria  ON pizzeria.id  = person_visits.pizzeria_id
     WHERE gender = 'male')

    (SELECT name AS pizzeria_name
     FROM female
     EXCEPT ALL SELECT *
     FROM male)
UNION ALL
    (SELECT name
     FROM male
     EXCEPT ALL 
     SELECT *
     FROM female)
ORDER BY 1;
/*
найдите объединение пиццерий[pizzeria.name],
которые посещали женщины или мужчины [person.gender = 'female' = 'male'].
Другими словами, вы должны найти набор названий пиццерий, которые посещали только женщины,
 и выполнить операцию "СОЮЗ" с набором названий пиццерий, которые посещали только мужчины.
 Обратите внимание на слово «только» для обоих полов.
 Для любых операторов SQL с наборами сохраняйте дубликаты
 (конструкции UNION ALL, EXCEPT ALL, INTERSECT ALL).
 отсортируйте результат по названию пиццерии. Образец данных представлен ниже.

 pizzeria_name
 ------------
  Best Pizza
  Dominos
    ...
 UNION по сути добавляет результаты второго запроса к результатам первого
 (хотя никакой порядок возвращаемых строк при этом не гарантируется).
 Более того, эта операция убирает дублирующиеся строки из результата так же, как это делает DISTINCT,
 если только не указано UNION ALL.
INTERSECT возвращает все строки, содержащиеся в результате и первого, и второго запроса.
Дублирующиеся строки отфильтровываются, если не указано ALL.

EXCEPT возвращает все строки, которые есть в результате первого запроса, но отсутствуют в результате второго.
 (Иногда это называют разницей двух запросов.)
 И здесь дублирующиеся строки отфильтровываются, если не указано ALL.
 */