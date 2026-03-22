USE keegan_blakely_portfolio;

CREATE OR REPLACE VIEW stag_potential_duplicates AS

SELECT ai.alt_id
, ai.alt_id_type

-- raw identity fields
, s.student_id
, s.last_name
, s.first_name
, s.preferred_name
, s.birth_date
, s.gender_identity
, s.international_status

-- standardized identity fields
, LOWER(REPLACE(REPLACE(TRIM(s.last_name), '-', ''), '''', '')) AS last_name_std
, LOWER(REPLACE(REPLACE(TRIM(s.first_name), '-', ''), '''', '')) AS
first_name_std
, LOWER(REPLACE(REPLACE(TRIM(s.preferred_name), '-', ''), '''', ''))
AS preferred_name_std
, LOWER(s.gender_identity) AS gender_identity_std

-- raw address fields
, s.address_id
, a.address_lines
, a.city
, a.state
, a.zip
, a.country

-- standardized address fields
, LOWER(REPLACE(REPLACE(TRIM(a.address_lines), '.', ''), ',', '')) AS
address_lines_std
, LOWER(TRIM(a.city)) AS city_std
, LOWER(TRIM(a.state)) AS state_std
, LOWER(REPLACE(REPLACE(TRIM(a.zip), ' ', ''), '-', '')) AS zip_std
, LOWER(TRIM(a.country)) AS country_std

-- raw email fields
, e1.email_address AS email_1
, e2.email_address AS email_2

-- standardized email fields
, LOWER(TRIM(e1.email_address)) AS email_1_std
, LOWER(TRIM(e2.email_address)) AS email_2_std

-- raw phone fields
, p1.phone_number AS phone_1
, p2.phone_number AS phone_2

-- standardized phone fields
, CASE WHEN LEFT(p1c.p1_clean, 1) = '1' THEN SUBSTRING(p1c.p1_clean, 2)
ELSE p1c.p1_clean END AS phone_1_std

, CASE WHEN LEFT(p2c.p2_clean, 1) = '1' THEN SUBSTRING(p2c.p2_clean, 2)
ELSE p2c.p2_clean END AS phone_2_std

-- enrolment info
, COALESCE(ec.enrolment_count, 0) AS enrolment_count
, ec.first_enrolment_date

FROM student s
JOIN address a ON s.address_id = a.address_id
JOIN email e1 ON s.student_id = e1.student_id AND e1.position = 1
LEFT JOIN email e2 ON s.student_id = e2.student_id AND e2.position = 2
JOIN phone p1 ON s.student_id = p1.student_id AND p1.position = 1
LEFT JOIN phone p2 ON s.student_id = p2.student_id AND p2.position = 2
JOIN alternate_id ai ON s.student_id = ai.student_id

LEFT JOIN LATERAL (
SELECT REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(TRIM(p1.phone_number),
' ', ''), '-', ''), ')', ''), '(', ''), '.', '') AS p1_clean
) AS p1c ON TRUE

LEFT JOIN LATERAL (
SELECT REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(TRIM(p2.phone_number),
' ', ''), '-', ''), ')', ''), '(', ''), '.', '') AS p2_clean
) AS p2c ON TRUE

LEFT JOIN (
SELECT se.student_id
, COUNT(*) AS enrolment_count
, MIN(se.enrolment_date) AS first_enrolment_date
FROM student_enrolment se
GROUP BY se.student_id
) AS ec ON ec.student_id = s.student_id

WHERE ai.alt_id IN (
SELECT alt_id
FROM alternate_id
GROUP BY alt_id
HAVING COUNT(*) > 1
);
