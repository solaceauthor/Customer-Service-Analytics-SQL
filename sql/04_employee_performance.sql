
-- How many support representatives are currently employed?
SELECT COUNT(DISTINCT employee_id) AS total_num_employee
FROM bank;

SELECT employee_id,empoyee_name, COUNT(support_representative_id)
FROM bank
GROUP BY 1,2;

-- What is the total call duration handled by each employee?
SELECT employee_id,empoyee_name,SUM(call_duration) AS total_call_duration
FROM bank
GROUP BY 1,2
ORDER BY 3 DESC;

-- How many support queries has each employee answered?
-- Which employees handle the highest number of support queries?
SELECT employee_id,empoyee_name, COUNT(support_query_id) AS num_query,SUM(call_duration) AS total_duration
,SUM(support_query_time_in_days) as Total_days
FROM bank
GROUP BY 1,2
ORDER BY 3 DESC;

-- Which employees are working overtime assuming 8 hours as expected working time?
WITH 
CTE_working_time
AS
(
SELECT employee_id,empoyee_name,
CASE
	WHEN call_duration < 8 THEN 'Less than Shift Time'
    WHEN call_duration = 8 THEN 'Fixed Time'
    WHEN call_duration > 8 THEN 'Overtime'
END AS Working_time
FROM bank)
SELECT employee_id, empoyee_name, working_time, COUNT(working_time) as num_overtime,
ROW_NUMBER() OVER() AS row_num 
FROM CTE_working_time
GROUP BY 1,2,3
HAVING working_time = 'Overtime';

