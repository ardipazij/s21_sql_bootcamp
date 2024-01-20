WITH andrey_defoltych_visits AS (SELECT pizzeria.name AS pizzeria_name
                                 FROM person
                                          INNER JOIN person_visits ON person_visits.person_id = person.id
                                          INNER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
                                 WHERE person.name = 'Andrey'),
     andrey_defoltych_orders AS (SELECT pizzeria.name AS pizzeria_name
                                 FROM person
                                          INNER JOIN person_order ON person_order.person_id = person.id
                                          INNER JOIN menu ON person_order.menu_id = menu.id
                                          INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
                                 WHERE person.name = 'Andrey')
SELECT pizzeria_name
FROM andrey_defoltych_visits MINUS
EXCEPT
SELECT pizzeria_name
FROM andrey_defoltych_orders
