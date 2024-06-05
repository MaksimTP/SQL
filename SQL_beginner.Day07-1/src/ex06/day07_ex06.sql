SELECT (SELECT name FROM pizzeria WHERE id = po.pizzeria_id) as name,
       COUNT(*),
       ROUND(AVG(price), 2) as average_price,
       ROUND(MAX(price), 2) as max_price,
       ROUND(MIN(price), 2) as min_price
    FROM (
    SELECT pizzeria_id, price
    FROM person_order
    JOIN public.menu m on m.id = person_order.menu_id) as po
    GROUP BY po.pizzeria_id
ORDER BY 1