CREATE VIEW v_price_with_discount AS
(
SELECT person.name,
       menu.pizza_name,
       menu.price,
       ROUND(menu.price * 0.9) AS discount_price
FROM person_order
         INNER JOIN person ON person_order.person_id = person.id
         INNER JOIN menu ON menu.id = person_order.menu_id
ORDER BY name, pizza_name
    )

