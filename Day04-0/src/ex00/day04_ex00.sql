
CREATE VIEW v_persons_female AS
SELECT * FROM person
WHERE gender = 'female';

CREATE VIEW v_persons_male AS
SELECT * FROM person
WHERE gender = 'male';

-- SELECT * FROM person WHERE gender = 'female';
-- SELECT * FROM person WHERE gender = 'male';


/* 
создайте 2 представления базы данных (с аналогичными атрибутами, такими как исходная таблица) 
на основе простой фильтрации по полу людей.
Задайте соответствующие имена для представлений базы данных: v_persons_femaleи v_persons_male.
 */

WITH RECURSIVE r AS (
    -- стартовая часть рекурсии (т.н. "anchor")
    SELECT 
        1 AS i, 
        1 AS factorial
    
    UNION 
    
    -- рекурсивная часть 
    SELECT 
        i+1 AS i, 
        factorial * (i+1) as factorial 
    FROM r
    WHERE i < 10
)
SELECT * FROM r;