/*SELECT 
job_title_short title,
job_location AS Location,
job_posted_date  AT TIME ZONE 'UTC'AT TIME ZONE 'EST' AS Date,
EXTRACT(MONTH FROM job_posted_date) AS Datee
FROM job_postings_fact
LIMIT 10;*/

/*SELECT *
FROM(
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 1

)AS Simeon;*/

/*WITH simon AS (
    SELECT *
    FROM 
    job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1

) 
SELECT*
FROM simon;*/

SELECT 
    company_id,
    name AS company_name
FROM company_dim
WHERE company_id IN (
SELECT 
    company_id
FROM job_postings_fact
WHERE 
    job_no_degree_mention = true
)

