SELECT m.pizza_name, p.name
FROM menu m, pizzeria p
WHERE m.pizzeria_id = p.id;

set ENABLE_SEQSCAN = off;
EXPLAIN ANALYZE SELECT m.pizza_name, p.name
FROM menu m, pizzeria p
WHERE m.pizzeria_id = p.id;
