CREATE INDEX idx_person_name ON person (upper(name));

set ENABLE_SEQSCAN = off;

EXPLAIN ANALYZE SELECT *
FROM person
WHERE upper(name) = 'ANNA'
