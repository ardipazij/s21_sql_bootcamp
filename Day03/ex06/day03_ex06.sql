SELECT menu1.pizza_name AS pizza_name,
       pizzeria1.name   AS pizzeria_name_1,
       pizzeria2.name   AS pizzeria_name_2,
       menu1.price      AS price
FROM menu AS menu1
         INNER JOIN menu AS menu2 on menu1.id <> menu2.id
    AND menu1.price = menu2.price AND menu1.pizza_name = menu2.pizza_name
         INNER JOIN pizzeria AS pizzeria2 ON pizzeria2.id = menu2.pizzeria_id
         INNER JOIN pizzeria AS pizzeria1 ON menu1.pizzeria_id = pizzeria1.id
WHERE pizzeria1.id > pizzeria2.id
ORDER BY pizza_name
