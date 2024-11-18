SELECT
	*
FROM
	main.data_jobs;


SELECT
	COUNT(*) AS total_jobs_in_db
FROM
	main.data_jobs;


---- filtering salary_in_usd less than 50k
SELECT
	COUNT(*) AS number_jobs_less_than_50k
FROM
	main.data_jobs
WHERE
	salary_in_usd < 50000;
	
--focus on experience level
SELECT
	DISTINCT experience_level
FROM
	main.data_jobs;
	
SELECT
	*
FROM
	main.data_jobs
WHERE
	experience_level = 'EN';


SELECT
	COUNT(*)
FROM
	main.data_jobs
WHERE
	experience_level = 'EN';
	

SELECT
	MEDIAN(salary_in_usd)
FROM
	main.data_jobs
WHERE
	experience_level = 'EN';


SELECT
	MEDIAN(salary_in_usd)
FROM
	main.data_jobs
WHERE
	experience_level = 'MI';


SELECT
	MEDIAN(salary_in_usd)
FROM
	main.data_jobs
WHERE
	experience_level = 'SE';
	
SELECT
	MEDIAN(salary_in_usd)
FROM
	main.data_jobs
WHERE
	experience_level = 'EX';