UPDATE menu
SET price = (price * 0.9)::int
WHERE pizza_name = 'greek pizza';

/*  
измените цену на «греческую пиццу» на -10% от текущей стоимости. */