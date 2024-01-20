SELECT menu.pizza_name,
       menu.price,
       pizzeria.name AS pizzeria_name,
       person_visits.visit_date
FROM menu
         INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
         INNER JOIN person_visits ON person_visits.pizzeria_id = menu.pizzeria_id
         INNER JOIN person ON person.id = person_visits.person_id
WHERE price BETWEEN 800 AND 1000
  AND person.name = 'Kate'
ORDER BY 1, 2, 3


-- for Kate
-- price range from 800 to 1000