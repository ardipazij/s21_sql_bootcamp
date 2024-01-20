INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES ((SELECT max(id) + 1 from person_order), (SELECT id from person Where name = 'Denis'),
        (select id from menu where pizza_name = 'sicilian pizza'), '2022-02-24');
INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES ((SELECT max(id) + 1 from person_order), (SELECT id from person Where name = 'Irina'),
        (select id from menu where pizza_name = 'sicilian pizza'), '2022-02-24')

