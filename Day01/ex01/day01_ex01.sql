SELECT object_name
FROM (SELECT name AS object_name
      FROM person
      ORDER BY object_name) AS person_data
UNION ALL
SELECT object_name
FROM (SELECT pizza_name AS object_name
      FROM menu
      ORDER BY object_name) AS menu_data;
