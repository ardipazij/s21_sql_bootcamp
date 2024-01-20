SELECT DISTINCT person.name
FROM person_order
         INNER JOIN person ON person.id = person_order.person_id
ORDER BY 1