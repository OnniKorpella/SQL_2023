WITH female AS
    (SELECT pizzeria.name
     FROM pizzeria
     JOIN menu          ON menu.pizzeria_id     = pizzeria.id 
     JOIN person_order  ON person_order.menu_id = menu.id
     JOIN person        ON person.id            = person_order.person_id
     WHERE gender = 'female'),
     male AS
    (SELECT pizzeria.name
     FROM pizzeria
     JOIN menu          ON menu.pizzeria_id     = pizzeria.id 
     JOIN person_order  ON person_order.menu_id = menu.id
     JOIN person        ON person.id            = person_order.person_id
     WHERE gender = 'male')
    (SELECT name AS pizzeria_name
     FROM female
     EXCEPT SELECT *
     FROM male)
UNION DISTINCT
    (SELECT *
     FROM male
     EXCEPT SELECT *
     FROM female)
ORDER BY 1;

/*
Пожалуйста, найдите союз пиццерий, у которых есть заказы либо от женщин, либо от мужчин.
 Другими словами, вы должны найти набор названий пиццерий, заказанных только женщинами,
 и выполнить операцию «СОЮЗ» с набором названий пиццерий, заказанных только мужчинами.
 Обратите внимание на слово «только» для обоих полов.
 Для любых операторов SQL с множествами не сохраняются дубликаты
 (UNION, EXCEPT, INTERSECT). Пожалуйста, отсортируйте результат по названию пиццерии.
 Образец данных представлен ниже.
 */