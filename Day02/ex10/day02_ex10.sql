SELECT person.name    AS person_name_1,
       person2.name   AS person_name_2,
       person.address AS common_address
FROM person
         INNER JOIN person AS person2 ON person2.address = person.address
WHERE person.id > person2.id
