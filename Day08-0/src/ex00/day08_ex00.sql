-- terminal 1
BEGIN TRANSACTION;

-- terminal 2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- terminal 1
UPDATE pizzeria
SET rating = 5
WHERE name = 'Pizza Hut';

-- terminal 2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

-- terminal 1
COMMIT;

-- terminal 2
SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';