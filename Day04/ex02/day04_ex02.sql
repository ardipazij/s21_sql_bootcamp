CREATE VIEW v_generated_dates AS
SELECT data::DATE AS generated_date
FROM generate_series('2022-01-01'::timestamp, '2022-01-31', interval '1 day') AS data
ORDER BY generated_date