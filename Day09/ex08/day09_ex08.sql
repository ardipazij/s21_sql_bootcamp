CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop integer default 10)
    RETURNS SETOF numeric AS
$$
DECLARE
    result   numeric;
    previous numeric;
    temp     numeric;
BEGIN
    result := 1;
    previous := 0;
    FOR i IN 2 ..pstop BY 1
        LOOP
            temp := result;
            result := result + previous;
            previous := temp;
            RETURN NEXT result;
        END LOOP;
    RETURN NEXT result;
END;
$$ LANGUAGE plpgsql;

select *
from fnc_fibonacci(100);
select *
from fnc_fibonacci();

DROP FUNCTION fnc_fibonacci(integer)

CREATE INDEX idx_person_order_multi ON person_order(person_id, menu_id, order_date);

      explain analyse
      SELECT *
      FROM person_order
      WHERE person_id = 8 AND
          menu_id = 19;
