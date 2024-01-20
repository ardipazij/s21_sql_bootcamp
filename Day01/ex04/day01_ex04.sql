SELECT person_order.person_id AS person_id
FROM person_order
WHERE person_order.order_date = '2022-01-07'
EXCEPT ALL
SELECT person_visits.person_id AS person_id
FROM person_visits
WHERE person_visits.visit_date = '2022-01-07';