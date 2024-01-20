-- Session 1
BEGIN;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- Session 2
BEGIN;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- Session 1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
-- Session 2
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';
COMMIT;
-- Session 1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;
-- Session 1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- Session 2
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';