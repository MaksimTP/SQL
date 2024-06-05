CREATE UNIQUE INDEX idx_menu_unique on menu (pizzeria_id, pizza_name);

set ENABLE_SEQSCAN = off;

EXPLAIN ANALYZE SELECT *
FROM menu
WHERE pizzeria_id = 2 and pizza_name = 'cheese pizza'