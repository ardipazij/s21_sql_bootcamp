SELECT sorted_pizza_name.pizza_name AS pizza_name,
       pizzeria.name                AS pizzeria_name,
       sorted_pizza_name.price      AS price
FROM (SELECT * FROM menu WHERE menu.pizza_name in ('mushroom pizza', 'pepperoni pizza')) AS sorted_pizza_name
         INNER JOIN pizzeria ON sorted_pizza_name.pizzeria_id = pizzeria.id
ORDER BY pizza_name, pizzeria_name;