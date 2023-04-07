SELECT 
	first_name, 
    last_name, 
    points, 
    points * 10 + 100 AS 'discount factor'
FROM customers;