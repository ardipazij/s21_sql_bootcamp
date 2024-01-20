CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(pperson varchar default 'Dmitriy',
                                                              pprice numeric default 500,
                                                              pdate date default '2022-01-08')
    RETURNS TABLE
            (
                name varchar
            )
AS
$$
SELECT pizzeria.name AS name
FROM pizzeria
         INNER JOIN menu ON menu.pizzeria_id = pizzeria.id
         Inner JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
         INNER JOIN person ON person.id = person_visits.person_id
WHERE person.name = pperson
  AND price < pprice
  AND person_visits.visit_date = pdate;
$$ LANGUAGE SQL;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna', pprice := 1300, pdate := '2022-01-01');