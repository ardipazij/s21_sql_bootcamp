ALTER TABLE person
    ALTER COLUMN age TYPE numeric;
SELECT address,
       ROUND((MAX(age) - MIN(age) / MAX(age)), 2)                       AS formula,
       ROUND(AVG(age), 2)                                               as average,
       ROUND((MAX(age) - MIN(age) / MAX(age)), 2) >= ROUND(AVG(age), 2) AS comparison
FROM person
GROUP BY address
ORDER BY 1;