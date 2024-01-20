SELECT visits.name, coalesce(visits.count, 0) + coalesce(orders.count, 0) AS total_cost
FROM (SELECT pizzeria.name,
             COUNT(*)
      FROM person_visits
               INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
      GROUP BY pizzeria.name
      ORDER BY 2 DESC) AS visits
         FULL JOIN
     (SELECT pizzeria.name,
             COUNT(*)
      FROM person_order
               INNER JOIN menu ON menu.id = person_order.menu_id
               INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
      GROUP BY pizzeria.name
      ORDER BY 2 DESC) AS orders ON visits.name = orders.name