SELECT *
FROM person
         CROSS JOIN
     pizzeria
ORDER BY person.id ASC, pizzeria.id ASC;