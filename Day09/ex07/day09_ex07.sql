CREATE OR REPLACE FUNCTION func_minimum(VARIADIC arr numeric[] default '{0}')
    RETURNS numeric AS
$$
DECLARE
    min_value numeric;
BEGIN
    min_value := arr[1];
    FOR i IN 2..array_length(arr, 1)
        LOOP
            IF arr[i] < min_value THEN
                min_value := arr[i];
            END IF;
        END LOOP;
    RETURN min_value;
END;
$$ LANGUAGE plpgsql;

SELECT func_minimum(VARIADIC arr => ARRAY [10.0, -1.0, 5.0, 4.4]);