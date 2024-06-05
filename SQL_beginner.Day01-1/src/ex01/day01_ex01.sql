SELECT pm.object_name
FROM (SELECT id as object_id, pizza_name as object_name
    FROM menu
UNION ALL
    SELECT id, name
    FROM person
    ) as pm
ORDER BY object_name;
