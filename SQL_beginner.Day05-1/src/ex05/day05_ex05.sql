CREATE UNIQUE INDEX idx_person_order_order_date on person_order (person_id, menu_id) WHERE order_date = '2022-01-01';

set ENABLE_SEQSCAN = off;

EXPLAIN ANALYZE SELECT *
FROM person_order
WHERE order_date = '2022-01-01'