SELECT p.name,
       CASE
           WHEN p.name = 'Denis' THEN 'true'
           ELSE 'false'
       END AS check_name
FROM person as p, person_order as p_ord
WHERE (p_ord.menu_id = 13 OR p_ord.menu_id = 14 OR p_ord.menu_id = 18)
  AND order_date = '2022-01-07' AND p_ord.person_id = p.id;
