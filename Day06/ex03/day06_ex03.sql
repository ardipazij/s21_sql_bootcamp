CREATE UNIQUE INDEX idx_person_discounts_unique ON person_discounts (person_id, pizzeria_id);

set enable_seqscan = off;
EXPLAIN ANALYSE
SELECT name
FROM person_discounts
         INNER JOIN pizzeria ON person_discounts.pizzeria_id = pizzeria.id
WHERE person_id = 4
  AND pizzeria_id = 2