----------------------------------------------------------------------------------------
-- THE NUMBER OF LESSONS GIVEN PER MONTH DURING A SPECIFIED YEAR
----------------------------------------------------------------------------------------
SELECT 
    TO_CHAR(scheduled_time, 'Month') AS month_name,
    COUNT(*) AS total_lessons,
    COUNT(CASE WHEN price_id IN (
        SELECT id FROM pricing_scheme WHERE type_price = 'individual') THEN 1 END) AS individual_lessons,
    COUNT(CASE WHEN price_id IN (
        SELECT id FROM pricing_scheme WHERE type_price = 'group_lesson') THEN 1 END) AS group_lessons,
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

----------------------------------------------------------------------------------------
-- NUMBER OF STUDENTS THERE ARE WITH NO SIBLING, WITH ONE SIBLING AND TWO SIBLINGS
----------------------------------------------------------------------------------------
SELECT  sibling_count AS "No of siblings",
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

----------------------------------------------------------------------------------------
-- IDS AND NAMES OF ALL INSTRUCTORS WHO HAVE GIVEN 2 OR MORE LESSONS DURING THE CURRENT MONTH
----------------------------------------------------------------------------------------

SELECT i.id AS instructor_id, p.first_name AS "first name", p.last_name AS "last name", 
       COUNT(l.id) AS "number of lessons"
FROM lesson l
JOIN instructor i ON l.instructor_id = i.id
JOIN person p ON i.person_id = p.id
WHERE l.given = true
       AND EXTRACT(YEAR FROM l.scheduled_time) = EXTRACT(YEAR FROM CURRENT_DATE)
       AND EXTRACT(MONTH FROM l.scheduled_time) = EXTRACT(MONTH FROM CURRENT_DATE)
GROUP BY i.id, p.first_name, p.last_name
HAVING COUNT(l.id) >= 2
ORDER BY "number of lessons" DESC;

----------------------------------------------------------------------------------------
-- LIST OF ALL ENSEMBLES HELD DURING THE NEXT WEEK
----------------------------------------------------------------------------------------
SELECT 
    TO_CHAR(l.scheduled_time, 'Dy') AS day,
    e.target_genre AS genre, 
    CASE
        WHEN COUNT(l.id) >= gl.maximum_number_of_students THEN 'No Seats' 
        WHEN gl.maximum_number_of_students - COUNT(l.id) <= 2 THEN '1 or 2 Seats' 
        ELSE 'Many Seats' 
    END AS "No of free seats"
FROM 
    lesson l
INNER JOIN 
    pricing_scheme ps ON l.price_id = ps.id
INNER JOIN 
    group_lesson gl ON gl.lesson_id = l.id
INNER JOIN 
    ensemble e ON e.group_lesson_id = gl.id 
WHERE 
    ps.type_price = 'ensemble'
    AND l.scheduled_time >= CURRENT_DATE
    AND l.scheduled_time < CURRENT_DATE + INTERVAL '7 days' 
GROUP BY 
    TO_CHAR(l.scheduled_time, 'Dy'), e.target_genre, gl.maximum_number_of_students
ORDER BY 
    genre, day;
