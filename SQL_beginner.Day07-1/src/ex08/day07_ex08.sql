SELECT
        (SELECT address FROM person WHERE id = po.person_id) as address,
       (SELECT name
        FROM pizzeria
        WHERE id = po.pizzeria_id) as name,
        COUNT(*) as count_of_orders
FROM
    (
    SELECT pizzeria_id, person_id
    FROM person_order
    JOIN public.menu m on m.id = person_order.menu_id
    ) as po
GROUP BY address, name
ORDER BY 1,2