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
