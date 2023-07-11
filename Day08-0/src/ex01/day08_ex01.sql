-- terminal 1
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- terminal 2
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- terminal 1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- terminal 2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- terminal 1
UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';

-- terminal 2
UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';

-- terminal 1
COMMIT;

-- terminal 2
COMMIT;

-- terminal 1
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';


-- terminal 2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';