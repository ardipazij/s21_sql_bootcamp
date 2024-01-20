-- Session 1
BEGIN;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- Session 2
BEGIN;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- Session 1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
-- Session 2
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- Session 1
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';

-- Session 2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';

-- Session 1
COMMIT;

-- Session 2
COMMIT;

-- Session 1
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- Session 2
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';