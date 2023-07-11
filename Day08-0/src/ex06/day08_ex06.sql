--1 terminal 1 
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
--2 terminal 2 
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

--3 terminal 1  
SELECT SUM(rating) FROM pizzeria;
--4 terminal 2
UPDATE pizzeria
SET rating = 5
WHERE name = 'Pizza Hut';

--5 terminal 2
COMMIT;

--6 terminal 1
SELECT SUM(rating) FROM pizzeria;

--7 terminal 1  
COMMIT;

--8 terminal 1  
SELECT SUM(rating) FROM pizzeria;
--9 terminal 2
SELECT SUM(rating) FROM pizzeria;


/* 
Пожалуйста,
суммируйте все рейтинги для всех пиццерий
в режиме транзакции для обоих сеансов и после этого обновите рейтинг до значения 5 для ресторана “Pizza Hut” в сеансе № 2 
(в том же порядке, что и на картинке). */