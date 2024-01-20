set enable_seqscan = off;
EXPLAIN ANALYSE
SELECT menu.pizza_name, pizzeria.name
FROM menu
         INNER JOIN pizzeria on pizzeria.id = menu.pizzeria_id