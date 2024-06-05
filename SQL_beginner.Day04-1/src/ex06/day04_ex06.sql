CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats as
SELECT pi.name
FROM person_visits
INNER JOIN person p on person_visits.person_id = p.id
INNER JOIN pizzeria pi on person_visits.pizzeria_id = pi.id
WHERE pizzeria_id IN (SELECT pizzeria_id FROM menu WHERE price < 800) and p.name = 'Dmitriy' and visit_date = '2022-01-08'