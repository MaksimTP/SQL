INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
SELECT ROW_NUMBER() over () as id, person_id, pizzeria_id, CASE WHEN COUNT(*) = 1 THEN 10.5 WHEN COUNT(*) = 2 THEN 22 ELSE 30 END AS discount
FROM (SELECT person_id, (SELECT menu.pizzeria_id FROM menu WHERE menu_id = menu.id) as pizzeria_id FROM person_order) as po
GROUP BY person_id, pizzeria_id
ORDER BY 1,2

