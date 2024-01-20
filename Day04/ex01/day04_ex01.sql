(SELECT v_personal_female.name FROM v_personal_female)
    UNION
(SELECT v_personal_male.name FROM v_personal_male)
    ORDER BY name