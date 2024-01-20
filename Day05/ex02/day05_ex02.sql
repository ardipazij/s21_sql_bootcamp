CREATE INDEX idx_person_name ON person (upper(name));
set enable_seqscan = off;
EXPLAIN ANALYZE
SELECT *
FROM person
WHERE name = 'DENIS'