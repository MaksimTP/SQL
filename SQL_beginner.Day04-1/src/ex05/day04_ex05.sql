CREATE VIEW v_price_with_discount AS
SELECT p.name as name, m.pizza_name as pizza_name, m.price as price, (m.price * 0.9)::int as discount_price
FROM person_order
JOIN public.menu m on m.id = person_order.menu_id
JOIN public.person p on p.id = person_order.person_id
ORDER BY 1,2