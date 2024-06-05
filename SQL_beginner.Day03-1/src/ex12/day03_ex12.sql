INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT gen::int + (SELECT MAX(id) FROM person_order) as id, gen::int as person_id, (SELECT id FROM menu WHERE pizza_name = 'greek pizza') as menu_id, '2022-02-25' as order_date
FROM GENERATE_SERIES(1, (SELECT MAX(id) FROM person)) as gen
