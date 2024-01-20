SELECT person.address,
       pizzeria.name,
       COUNT(*)
from person_order
         INNER JOIN menu ON menu.id = person_order.menu_id
         INNER JOIN person ON person.id = person_order.person_id
         INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY pizzeria.name, person.address
ORDER BY 1, 2;