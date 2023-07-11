-- 1  terminal 1
BEGIN;
-- 2  terminal 2
BEGIN;

-- 3  terminal 1
UPDATE pizzeria 
SET rating = 3 
WHERE id = 1;	

-- 4 terminal 2
UPDATE pizzeria 
SET rating = 4 
WHERE id = 2;	

-- 5  terminal 1
UPDATE pizzeria 
SET rating = 5 
WHERE id = 2;	

-- 6 terminal 2
UPDATE pizzeria 
SET rating = 6 
WHERE id = 1;	
-- 7  terminal 1
COMMIT;
-- 8  terminal 2

COMMIT;


/* 
Пожалуйста, 
напишите любую инструкцию SQL с любым уровнем изоляции 
(вы можете использовать настройку по умолчанию) 
в таблице pizzeria, чтобы воспроизвести эту ситуацию взаимоблокировки.
 */