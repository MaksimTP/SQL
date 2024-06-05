CREATE UNIQUE INDEX idx_person_discounts on person_discounts (person_id, pizzeria_id)

set ENABLE_SEQSCAN = off;

EXPLAIN ANALYZE SELECT *
FROM person_discounts
WHERE person_id = 2 and pizzeria_id = 2