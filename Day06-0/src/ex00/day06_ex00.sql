CREATE TABLE  person_discounts
(
    id          bigint PRIMARY KEY,
    person_id   bigint NOT NULL,
    pizzeria_id bigint NOT NULL,
    discount    numeric,
    constraint fk_person_discounts_person_id   foreign key (person_id)   references person(id),
    constraint fk_person_discounts_pizzeria_id foreign key (pizzeria_id) references pizzeria(id)

);




/* 
Please think about personal discounts for people from one side and pizzeria restaurants from other. Need to create a new relational table (please set a name person_discounts) with the next rules.
установите атрибут id как первичный ключ (пожалуйста, посмотрите на столбец id в существующих таблицах и выберите тот же тип данных)
установить внешние ключи атрибутов person_id и pizzeria_id для соответствующих таблиц (типы данных должны быть такими же, как и для столбцов id в соответствующих родительских таблицах)
задайте явные имена для ограничений внешних ключей по шаблону fk_{table_name}_{column_name}, например fk_person_discounts_person_id
добавьте атрибут скидки для хранения значения скидки в процентах. Помните, что значение скидки может быть числом с плавающей запятой (пожалуйста, используйте только числовой тип данных). Поэтому, пожалуйста, выберите соответствующий тип данных, чтобы покрыть эту возможность.
 */