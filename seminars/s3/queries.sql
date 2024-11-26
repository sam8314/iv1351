SELECT 
    TO_CHAR(scheduled_time, 'Month') AS month_name,
    COUNT(*) AS total_lessons,
    COUNT(CASE WHEN price_id IN (
        SELECT id FROM pricing_scheme WHERE type_price = 'individual') THEN 1 END) AS individual_lessons,
    COUNT(CASE WHEN price_id IN (
        SELECT id FROM pricing_scheme WHERE type_price = 'group') THEN 1 END) AS group_lessons,
    COUNT(CASE WHEN price_id IN (
        SELECT id FROM pricing_scheme WHERE type_price = 'ensemble') THEN 1 END) AS ensemble_lessons
FROM 
    lesson
WHERE 
    given = TRUE AND EXTRACT(YEAR FROM scheduled_time) = 2024
GROUP BY 
    TO_CHAR(scheduled_time, 'Month'), EXTRACT(MONTH FROM scheduled_time)
ORDER BY 
    EXTRACT(MONTH FROM scheduled_time);




SELECT 
    sibling_count AS "No of siblings",
    COUNT(*) AS "No of students"
FROM (
    SELECT 
        s.id AS student_id,
        COUNT(ss.sibling_id) AS sibling_count
    FROM student s
    LEFT JOIN student_sibling ss ON s.id = ss.student_id
    WHERE s.terminated = false
    GROUP BY s.id
) AS sibling_counts
GROUP BY sibling_count
ORDER BY sibling_count;
