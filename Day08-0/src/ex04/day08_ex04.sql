--1 terminal s1
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--2 terminal 2
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

--3 terminal 1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

--4 terminal 2
UPDATE pizzeria
SET rating = 3.0
WHERE name = 'Pizza Hut';

--5 terminal 2
COMMIT;
--6 terminal 1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

--7 terminal 1
COMMIT;
--8 terminal 1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

--9 terminal 2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';


/* 
Пожалуйста, 
проверьте рейтинг для “Pizza Hut”
в режиме транзакции для обоих сеансов 
и после этого увеличьте UPDATE рейтинг до значения 3.0 в сеансе № 2 (в том же порядке, что и на картинке).
 */