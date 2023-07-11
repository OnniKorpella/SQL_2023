INSERT INTO  person_discounts
SELECT ROW_NUMBER() OVER() id,
       person_order.person_id AS person_id,
       menu.pizzeria_id AS pizzeria_id,
       CASE
           WHEN count(menu.pizzeria_id) = 1
               THEN 10.5
           WHEN count(menu.pizzeria_id) = 2
               THEN 22
           ELSE 30
           END AS DISCOUNT
FROM person_order
    LEFT JOIN menu ON person_order.menu_id = menu.id GROUP BY person_id, menu.pizzeria_id;

/* 

Собственно, мы создали структуру для хранения наших скидок и готовы пойти дальше и заполнить нашу таблицу person_discounts новыми записями.

Итак, есть таблица person_order, в которой хранится история заказов человека. Пожалуйста, напишите оператор DML (INSERT INTO... SELECT...), который вставляет новые записи в таблицу person_discounts на основе следующих правил.

взять агрегированное состояние по столбцам 

person_id и pizzeria_id

рассчитать величину персональной скидки по следующему псевдокоду:

если «количество заказов» = 1, то «скидка» = 10,5 иначе, если «количество заказов» = 2, то «скидка» = 22, иначе «скидка» = 30

чтобы сгенерировать первичный ключ для таблицы person_discounts, используйте приведенную ниже конструкцию SQL (эта конструкция взята из области SQL WINDOW FUNCTION).

... ROW_NUMBER() OVER ( ) AS id ...

 */

