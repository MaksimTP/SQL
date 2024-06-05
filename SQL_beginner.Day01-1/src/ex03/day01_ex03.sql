SELECT DISTINCT order_date as action_date,person_order.person_id
FROM person_order, person_visits
WHERE person_order.person_id = person_visits.person_id AND order_date = visit_date
ORDER BY action_date, person_order.person_id DESC;