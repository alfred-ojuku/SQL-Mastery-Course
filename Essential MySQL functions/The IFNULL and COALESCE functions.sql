USE sql_store;

-- IFNULL FUNCTION
SELECT order_id,
	   IFNULL(shipper_id, 'Not assigned') AS shipper
FROM orders;

-- COALESCE FUNCTION
SELECT order_id,
       COALESCE(shipper_id, comments, 'Not assigned')
FROM orders;

-- EXERCISE
SELECT CONCAT(first_name, ' ', last_name) AS customer,
       IFNULL(phone, 'Unkown') AS phone
FROM customers;