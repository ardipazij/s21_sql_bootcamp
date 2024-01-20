SELECT pizzeria.name,
       COUNT(*)                  AS count_of_orders,
       ROUND(AVG(menu.price), 2) AS average_price,
       MAX(menu.price)              max_price,
       MIN(menu.price)              min_price
FROM person_order
         INNER JOIN menu ON menu.id = person_order.menu_id
         INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY pizzeria.name
ORDER BY name;