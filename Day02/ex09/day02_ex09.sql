WITH females AS (SELECT *
                 from person
                          JOIN person_order ON person_order.person_id = person.id
                 WHERE person.gender = 'female')

SELECT females.name
FROM females
         JOIN menu ON menu.id = females.menu_id
WHERE menu.pizza_name = 'pepperoni pizza'
INTERSECT
SELECT females.name
FROM females
         JOIN menu ON menu.id = females.menu_id
WHERE menu.pizza_name = 'cheese pizza'
ORDER BY name ASC