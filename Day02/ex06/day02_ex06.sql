SELECT menu.pizza_name,
       pizzeria.name AS pizzeria_name
FROM (SELECT * FROM person WHERE person.name in ('Denis', 'Anna')) AS sorted_person
         INNER JOIN person_order ON sorted_person.id = person_order.person_id
         INNER JOIN menu ON person_order.menu_id = menu.id
         INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
ORDER BY pizza_name, pizzeria_name;