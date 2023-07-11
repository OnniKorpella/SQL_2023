/* 
напишите функцию SQL или pl / pgsql 
func_minimum (это зависит от вас), 
у которой входным параметром является массив чисел, 
и функция должна возвращать минимальное значение.

Чтобы проверить себя и вызвать функцию, вы можете сделать заявление, подобное приведенному ниже.*/


CREATE OR REPLACE FUNCTION fnc_minimum(VARIADIC arr numeric[])
    RETURNS numeric AS $$
    BEGIN
        RETURN (SELECT MIN(arr[i])
        FROM generate_subscripts(arr, 1) g(i));
    END;
$$ LANGUAGE plpgsql;

SELECT fnc_minimum(VARIADIC arr => ARRAY [10.0, -1.0, 5.0, -10000]);



SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);