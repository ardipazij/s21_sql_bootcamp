SELECT menu.pizza_name,
       menu.price,
       pizzeria.name AS pizzeria_name
FROM (SELECT id AS menu_id
      FROM menu
      EXCEPT
      SELECT menu_id
      FROM postgres.public.person_order
     ) AS sorted_menu
         INNER JOIN menu ON menu.id = sorted_menu.menu_id
         INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY pizza_name, price