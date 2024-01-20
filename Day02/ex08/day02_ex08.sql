WITH males AS (SELECT *
               from person
                        JOIN person_order ON person_order.person_id = person.id
               WHERE person.gender = 'male'
                 AND (person.address in ('Samara', 'Moscow')))

SELECT males.name
FROM males
         JOIN menu ON menu.id = males.menu_id
WHERE menu.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY name DESC;