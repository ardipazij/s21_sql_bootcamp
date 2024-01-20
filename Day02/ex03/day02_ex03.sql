WITH data As (
    SELECT data::date
    FROM generate_series('2022-01-01'::TIMESTAMP, '2022-01-10', '1 day') AS data)

SELECT data::date AS missing_data
FROM (SELECT visit_date FROM person_visits WHERE person_id = 1 OR person_id = 2) AS person_visits_sorted
         RIGHT JOIN data ON person_visits_sorted.visit_date = data
WHERE person_visits_sorted.visit_date IS NULL
ORDER BY missing_data;