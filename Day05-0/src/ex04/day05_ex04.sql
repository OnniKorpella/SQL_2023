
CREATE UNIQUE INDEX idx_menu_unique ON menu (pizzeria_id, pizza_name);


EXPLAIN ANALYZE
SELECT pizzeria_id, pizza_name
FROM menu;
/* 
Создайте уникальный индекс BTree с именем idx_menu_unique 
в таблице меню для столбцов pizzeria_id и pizza_name.
Пожалуйста, напишите и предоставьте любой SQL
с доказательством (EXPLAIN ANALYZE), что индекс idx_menu_unique работает. */