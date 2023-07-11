CREATE VIEW v_price_with_discount AS (
SELECT      
        P.name,
        M.pizza_name,
        M.price,
        (M.price * 0.9)::int AS discount_price
FROM person_order AS PO
JOIN person AS P ON P.id = PO.person_id
JOIN menu   AS M ON M.id = PO.menu_id
ORDER BY 1,2);



/* 
создайте представление базы данных v_price_with_discount, 
которое возвращает заказы человека[person_order.person_id] с именами людей[persone.name], 
названиями пиццы[menu.pizza_name], 
реальной ценой [menu.price *0,9 ]и 
расчетным столбцом Discount_price (с примененной скидкой 10% и удовлетворяет формуле цена - цена * 0,1).
Результат отсортируйте по имени человека и названию пиццы и округлите столбец Discount_price до целочисленного типа. 
Пожалуйста, взгляните на пример результата ниже.

name        pizza_name      price   discount_price
----------|----------------|-------|----------------
Andrey      cheese pizza    800      720
Andrey      mushroom pizza  1100     990
 */