CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date
(
    IN pperson varchar DEFAULT 'Dmitriy', 
    IN pprice numeric DEFAULT 500,
    IN pdate date DEFAULT '2022-01-08'
)
    RETURNS TABLE (pizzeria_name varchar) AS $$
    BEGIN
        return query
        SELECT DISTINCT pizzeria.name
        FROM person_visits
        JOIN person_order    ON order_date = visit_date          AND person_visits.person_id = person_order.person_id
        JOIN menu            ON menu_id = menu.id                AND person_visits.pizzeria_id = menu.pizzeria_id
        JOIN person          ON person_order.person_id = person.id
        JOIN pizzeria        ON person_visits.pizzeria_id = pizzeria.id
        WHERE price < pprice AND order_date = pdate               AND person.name = pperson;
    END;
    $$LANGUAGE plpgsql;


select * from fnc_person_visits_and_eats_on_date(pprice := 800);

select * from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');

DROP FUNCTION fnc_person_visits_and_eats_on_date RESTRICT;

/* 
создайте функцию pl / pgsql fnc_person_visits_and_eats_on_date на основе инструкции SQL
1 - которая находит названия пиццерий,
2 - которые посетило лицо                                       (IN параметр pperson со значением по умолчанию ‘Dmitriy’) 
3 - и купил пиццу на сумму меньше указанной суммы в рублях      (IN параметр pprice со значением по умолчанию 500) 
4 - на определенную дату                                        (IN параметр pdate со значением по умолчанию значение - 8 января 2022 года).

Чтобы проверить себя и вызвать функцию, вы можете сделать заявление, подобное приведенному ниже. */