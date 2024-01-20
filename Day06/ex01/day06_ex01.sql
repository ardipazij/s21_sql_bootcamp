INSERT INTO person_discounts(id, person_id, pizzeria_id, discount)
    (SELECT row_number() over () AS id,
            person_order.person_id,
            menu.pizzeria_id,
            CASE
                WHEN COUNT(*) = 1 THEN 10.5
                WHEN COUNT(*) = 2 THEN 22
                ELSE 30
                END              AS discount
     from person_order
              INNER JOIN menu ON person_order.menu_id = menu.id
     GROUP BY person_id, pizzeria_id);


