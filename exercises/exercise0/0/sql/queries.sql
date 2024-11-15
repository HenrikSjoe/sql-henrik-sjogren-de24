SELECT * FROM sql_course;

SELECT * FROM sql_course WHERE content_type = 'exercise';

SELECT * FROM sql_course WHERE content_type = 'lecture';

SELECT * FROM sql_course WHERE week = 48;

SELECT * FROM sql_course WHERE week BETWEEN 47 AND 49;

SELECT COUNT(content_type) from main.sql_course WHERE content_type = 'lecture';

SELECT COUNT(DISTINCT content_type) FROM main.sql_course; 

SELECT DISTINCT content_type FROM main.sql_course;	




