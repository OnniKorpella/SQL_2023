--1 terminal 1 
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
--2 terminal 2 
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

--3 terminal 1 
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
--4 terminal 2 
UPDATE pizzeria
SET rating = 3.6
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