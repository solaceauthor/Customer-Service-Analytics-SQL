-- Total count of Customer 
SELECT COUNT(*)
FROM bank_customer_data;

-- How many customers are using the services across different states, and cities?

SELECT branch_state,COUNT(customer_id) num_customer
FROM bank_customer_data
GROUP BY branch_state
ORDER BY 2 DESC;

SELECT branch_city,COUNT(customer_id) num_customer
FROM bank_customer_data
GROUP BY branch_city
ORDER BY 2 DESC;

-- What is the distribution of customers whose call duration is more than 8 minutes?
SELECT customer_id, CONCAT(firstname, ' ', lastname) AS Cus_name,branch_state,
branch_city, support_query_type,call_duration
FROM bank_customer_data
WHERE call_duration > 8
ORDER BY 6 DESC;
