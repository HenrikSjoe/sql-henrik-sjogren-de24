SELECT * FROM main.cleaned_salaries;


-- 1. Explore your transformed table

--  a) Count number of Data engineers jobs. For simplicity just go for job_title Data Engineer.
SELECT
	COUNT(job_title) AS num_data_engineers
	FROM main.cleaned_salaries
	WHERE job_title = 'Data Engineer';
	
-- b) Count number of unique job titles in total.
SELECT COUNT(job_title) AS total_jobs
FROM main.cleaned_salaries;

-- c) Find out how many jobs that goes into each salary level.

SELECT
	COUNT(job_title),
	salary_level
FROM
	main.cleaned_salaries
GROUP BY
	salary_level;

-- d) Find out the median and mean salaries for each seniority levels.
SELECT
	experience_level,
	ROUND(MEAN(salary_annual_sek)) AS mean_salary,
	MEDIAN(salary_annual_sek) AS median_salary
	FROM main.cleaned_salaries
GROUP BY
	experience_level;


-- e) Find out the top earning job titles based on their median salaries and how much they earn.
SELECT
	job_title,
	ROUND(MEAN(salary_annual_sek)) AS mean_salary,
FROM
	main.cleaned_salaries
GROUP BY
	job_title
ORDER BY mean_salary DESC;


--  f) How many percentage of the jobs are fully remote, 50 percent remote and fully not remote.
SELECT
	remote_ratio,
	COUNT(remote_ratio) AS number_jobs,
	ROUND(COUNT(remote_ratio) * 100.0 / sum(COUNT(remote_ratio)) OVER (),1) AS percent
FROM
	main.cleaned_salaries
GROUP BY
	remote_ratio;




-- g) Pick out a job title of interest and figure out if company size affects the salary. Make a simple analysis as a comprehensive one requires causality investigations which are much harder to find.
SELECT company_size,
ROUND(MEDIAN(salary_monthly_sek)) AS median_salary_sek
FROM main.cleaned_salaries
WHERE job_title = 'Data Engineer'
GROUP BY job_title, company_size 
ORDER BY median_salary_sek;


	




