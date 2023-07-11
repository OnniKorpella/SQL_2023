SELECT id AS menu_id
FROM menu
EXCEPT
SELECT menu_id
FROM person_order
ORDER BY 1;
/*
найдите все идентификаторы меню [menu.id],
 которые никем не заказаны[отсутствуют в person_order.menu_id].
 Результат должен быть отсортирован по идентификаторам.
 ORDER BY 1

 menu_id
    5
    10
    ...
 */