USE keegan_blakely_portfolio;

-- OPTIONAL: Run these queries to learn more about the author!

-- Author info
SELECT first_name, last_name, gender_identity, city, state, country, email_address, phone_number
FROM student s
JOIN address a USING (address_id)
JOIN email e ON e.student_id = s.student_id AND primary_flag = 1
JOIN phone p ON p.student_id = s.student_id
WHERE first_name = 'Keegan'
  AND last_name = 'Blakely';

-- Author educational credentials
SELECT first_name, last_name, program_code, program_title, status, status_date
FROM student_program sp
JOIN program p USING (program_code)
JOIN student s USING (student_id)
WHERE first_name = 'Keegan'
  AND last_name = 'Blakely'
  AND status IN ('graduated', 'completed')
ORDER BY status_date ASC;

-- Author skills and experience
SELECT first_name, last_name, status,
       course_name AS skills_and_experience
FROM student_enrolment enr
JOIN section sec USING (section_id)
JOIN course c USING (course_id)
JOIN student st USING (student_id)
JOIN student_enrolment_status ses USING (student_enrolment_id)
WHERE first_name = 'Keegan'
  AND last_name = 'Blakely'
  AND status = 'passed'
ORDER BY course_name ASC;