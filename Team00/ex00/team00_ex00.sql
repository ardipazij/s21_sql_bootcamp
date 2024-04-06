CREATE TABLE IF NOT EXISTS graph
(
--             id SERIAL PRIMARY KEY,
    point1 TEXT    NOT NULL,
    point2 TEXT    NOT NULL,
    cost   INT NOT NULL
);

INSERT INTO graph (point1, point2, cost)
VALUES ('a', 'b', 10),
       ('b', 'a', 10),
       ('a', 'c', 15),
       ('c', 'a', 15),
       ('a', 'd', 20),
       ('d', 'a', 20),
       ('b', 'd', 25),
       ('d', 'b', 25),
       ('c', 'd', 30),
       ('d', 'c', 30),
       ('b', 'c', 35),
       ('c', 'b', 35);

CREATE VIEW table_1 AS
(
WITH RECURSIVE path AS (SELECT point1 AS track, point2 AS next_point, cost AS result_cost
                        FROM graph
                        WHERE point1 = 'a'
                        UNION
                        SELECT path.track || ',' || path.next_point AS track, graph.point1 AS next_point, path.result_cost + graph.cost AS result_cost
                        FROM path INNER JOIN graph ON (path.next_point = graph.point2)
                        WHERE track NOT LIKE '%' || graph.point2 || '%')
SELECT '{' || track || ',' || 'a' || '}' AS track, result_cost AS tour
FROM path
WHERE length(track) = 7 AND next_point = 'a'
)

SELECT tour ,  track
FROM table_1
WHERE tour = (SELECT MIN(tour) FROM table_1)
ORDER BY 1, 2;

