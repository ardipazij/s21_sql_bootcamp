-- Session 1
BEGIN;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- Session 2
BEGIN;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- Session 1
Commit;

-- Session 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';