SELECT name AS non_existent_pizzeria
FROM pizzeria
WHERE id NOT IN (SELECT pizzeria_id FROM person_visits);

SELECT name AS non_existent_pizzeria
FROM pizzeria
WHERE NOT EXISTS(SELECT pizzeria_id FROM person_visits WHERE pizzeria.id = pizzeria_id);