INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES ((SELECT MAX(ID) + 1 FROM person_visits), (SELECT id FROM person WHERE person.name = 'Dmitriy'),
        (SELECT id FROM pizzeria WHERE pizzeria.name = 'Dominos'), '2022-01-08');
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;