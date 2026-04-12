-- What are the different types of support queries?
-- What are the different categories of support queries and their counts?
-- Which category of support queries is most frequently logged?
SELECT support_query_type,support_query_category,
COUNT(support_query_type) AS num_support_type,ROUND((COUNT(support_query_type)/2645)*100,2) AS perc_type
FROM bank_customer_data
GROUP BY 1,2
ORDER BY 3 DESC;

SELECT COUNT(*)
FROM bank_customer_data;

-- Which support queries have a call duration greater than 8 minutes?
SELECT support_query_type, COUNT(support_query_category) num_support_category, call_duration
FROM bank_customer_data
GROUP BY support_query_type, call_duration
HAVING call_duration > 8
ORDER BY 3 DESC;

-- How many support queries have been in progress for more than 3 days?

SELECT support_query_type, COUNT(support_query_category) num_support_category, support_query_time_in_days
FROM bank_customer_data
GROUP BY support_query_type, support_query_time_in_days
HAVING support_query_time_in_days > 3
ORDER BY 3 DESC;

SELECT COUNT(*) AS support_queries_morethan_3days
FROM bank_customer_data
WHERE support_query_time_in_days > 3;

-- What is the total call duration across all support interactions?

SELECT SUM(call_duration) AS total_call
FROM bank_customer_data;

SELECT support_query_type, support_query_category, SUM(call_duration) AS total_call,
ROUND(AVG(call_duration),2) AS Avg_call, MAX(call_duration) AS Highest_min,MIN(call_duration) AS Lowest_min
FROM bank_customer_data
GROUP BY support_query_type, support_query_category
ORDER BY 3 DESC;
