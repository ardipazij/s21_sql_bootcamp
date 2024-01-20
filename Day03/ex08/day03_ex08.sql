insert into menu (id, pizzeria_id, pizza_name, price)
values ((select max(id) + 1 from menu), (select pizzeria_id from menu WHERE id = 19), 'sicilian pizza', '900')

