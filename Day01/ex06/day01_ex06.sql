SELECT DISTINCT person_order.order_date AS action_date,
                person.name             AS person_name
FROM person_visits
         JOIN
     person_order
     ON
         person_visits.person_id = person_order.person_id
         JOIN
     person
     ON
         person_visits.person_id = person.id
ORDER BY action_date ASC, person_name DESC;