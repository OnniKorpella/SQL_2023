INSERT INTO menu
VALUES ((SELECT MAX(id) + 1 FROM menu), 
        (SELECT id FROM pizzeria WHERE name = 'Dominos' ), 
        'sicilian pizza',
        900
       );


-- SELECT*FROM menu;
/*
зарегистрируйте новую пиццу 
(id которой должен рассчитываться по формуле «максимальное значение id + 1»)
в ресторане «Dominos» (используйте внутренний запрос, чтобы получить идентификатор пиццерии) .
название «sicilian pizza»
стоимостью 900 рублей 
*/