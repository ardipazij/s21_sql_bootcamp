SELECT generated_date AS mising_date
FROM v_generated_dates
EXCEPT
SELECT visit_date AS mising_date
FROM person_visits
ORDER BY mising_date