WITH dmitriy AS (SELECT *
                 FROM person
                          RIGHT JOIN (SELECT *
                                      FROM person_visits
                                      WHERE person_visits.visit_date = '2022-01-08') AS sorted_person_visits
                                     ON sorted_person_visits.person_id = person.id
                 WHERE person.name = 'Dmitriy')

SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
         JOIN dmitriy ON dmitriy.pizzeria_id = pizzeria.id
         LEFT JOIN menu ON menu.pizzeria_id = pizzeria.id
WHERE price <= 800;