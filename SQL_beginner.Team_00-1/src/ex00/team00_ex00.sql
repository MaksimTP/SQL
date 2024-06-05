CREATE TABLE graph
(
    point1 CHAR NOT NULL,
    point2 CHAR NOT NULL,
    cost INTEGER NOT NULL
);

INSERT INTO graph
VALUES ('a', 'b', 10),
 ('a', 'd', 20),
 ('a', 'c', 15),
 ('b', 'a', 10),
 ('b', 'd', 25),
 ('b', 'c', 35),
 ('c', 'd', 30),
 ('c', 'a', 15),
 ('c', 'b', 35),
 ('d', 'a', 20),
 ('d', 'b', 25),
 ('d', 'c', 30);


WITH RECURSIVE graph_0 (total_cost, cost, point1, point2, tour, seen) AS (
    SELECT
        g.cost::INTEGER AS total_cost,
        g.cost::INTEGER,
        g.point1,
        g.point2,
        array[g.point1] || array[g.point2] AS tour,
        g.point2::VARCHAR(50) AS seen

    FROM
        graph g
    WHERE
        g.point1 = 'a'
    UNION ALL
    SELECT
        (g3.total_cost + g2.cost)::INTEGER AS total_cost,
        g2.cost::INTEGER,
        g2.point1,
        g2.point2,
        (g3.tour || g2.point2),
        (g3.seen || g2.point2)::VARCHAR(50)
    FROM
        graph g2
        JOIN graph_0 g3 ON (g3.point2 = g2.point1)
        WHERE NOT (g3.seen LIKE '%' || g2.point2 || '%' OR g3.seen LIKE g2.point2 || '%' OR g3.seen LIKE '%' || g2.point2)
          AND NOT (g3.point2 = 'a' AND g2.point1 = 'a')
          AND NOT (LENGTH(seen) = 2 and g2.point2 = 'a')
)
SELECT
    total_cost,
    tour
FROM
    graph_0
WHERE
     LENGTH(seen) = 4 AND total_cost = (SELECT MIN(total_cost) FROM graph_0 WHERE LENGTH(seen) = 4)
ORDER BY
    total_cost,
    tour;
