SELECT coalesce(person.name, '-')      AS person_name,
       person_visits_sorted.visit_date AS visit_date,
       coalesce(pizzeria.name, '-')    AS pizzeria_name
FROM (SELECT *
      FROM person_visits
      WHERE person_visits.visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS person_visits_sorted
         FULL JOIN pizzeria ON person_visits_sorted.pizzeria_id = pizzeria.id
         FULL JOIN person ON person.id = person_visits_sorted.person_id
ORDER BY person_name, visit_date, pizzeria_name;