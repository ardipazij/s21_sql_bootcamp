WITH tables AS (
    SELECT pizzeria.name AS name, person.gender
    FROM person
             INNER JOIN person_visits ON person.id = person_visits.person_id
             INNER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
),
     male_table AS (SELECT name FROM tables WHERE tables.gender = 'male'),
     female_table AS (SELECT name FROM tables WHERE tables.gender = 'female')

    (SELECT name
     FROM female_table
     EXCEPT ALL
     SELECT name
     FROM male_table)
UNION ALL
(SELECT name
 FROM male_table
 EXCEPT ALL
 SELECT name
 FROM female_table)
ORDER BY name


