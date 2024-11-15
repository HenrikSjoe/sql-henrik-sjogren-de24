SELECT
	*
FROM
	main.data_jobs
ORDER BY
	salary_in_usd;
	
SELECT
	*
FROM
	main.data_jobs
ORDER BY
	salary_in_usd
DESC;


SELECT
	*
FROM
	main.data_jobs
ORDER BY
	salary_in_usd DESC,
	job_title ASC;


SELECT
	*
FROM
	main.data_jobs
WHERE
	job_title = 'Data Engineer'
ORDER BY
	salary_in_usd
	DESC;
