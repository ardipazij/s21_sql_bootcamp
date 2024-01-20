-- SELECT DISTINCT
--     person_order.order_date AS action_date,
--      person_visits.person_id AS person_id
-- FROM
--     person_visits
-- JOIN
--     person_order
-- ON
--     person_visits.person_id = person_order.person_id
-- ORDER BY
--     action_date ASC, person_id DESC;
--
--
(SELECT visit_date AS action_date,
        person_id  AS person_id
 FROM person_visits)
INTERSECT ALL
(SELECT order_date AS action_date,
        person_id  AS person_id
 FROM person_order)
ORDER BY action_date ASC, person_id DESC;




