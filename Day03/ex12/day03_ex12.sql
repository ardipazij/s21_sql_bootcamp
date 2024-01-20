WITH new_values AS (SELECT count_person + (SELECT MAX(ID) FROM person_order)      AS id,
                           person.id                                              AS person_id,
                           (SELECT id FROM menu WHERE pizza_name = 'greek pizza') as menu_id,
                           CAST('2022-02-25' AS DATE)                             AS order_date
                    FROM person
                             INNER JOIN generate_series(1, (SELECT COUNT(id) FROM person)) AS count_person
                                        ON person.id = count_person
)
INSERT
INTO person_order (id, person_id, menu_id, order_date)
SELECT *
FROM new_values