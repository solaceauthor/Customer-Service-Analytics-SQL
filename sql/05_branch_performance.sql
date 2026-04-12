
-- Which city and state report the highest number of support queries?
SELECT branch_state, COUNT(support_query_id) AS num_query
FROM bank_customer_data
GROUP BY 1
ORDER BY 2 DESC;

-- Is there any specific branch where more queries are logged?
SELECT branch_state,branch_city,branch_id, count(support_query_id) AS num_support_query
FROM bank_customer_data
GROUP BY 1,2,3
HAVING num_support_query > 1
ORDER BY 1;

-- Which branch reports more queries related to Home Loan services?

SELECT branch_state,branch_city,branch_id,COUNT(branch_id) num_branch,support_query_type
FROM bank_customer_data
WHERE support_query_type LIKE 'Home%'
GROUP BY 1,2,3,5
ORDER BY 4 DESC
LIMIT 1;


-- What is the distribution of support queries across branches?
SELECT branch_state,branch_city,branch_id,COUNT(support_query_id)
FROM bank_customer_data
GROUP BY 1,2,3
ORDER BY 4 DESC;

