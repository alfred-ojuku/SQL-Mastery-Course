SELECT
     c.customer_id, 
     o.order_id,
     c.first_name,
     s.name AS 'Shipper name'
FROM customers c
LEFT JOIN orders o
   ON c.customer_id = o.customer_id
LEFT JOIN shippers s
     ON o.shipper_id = s.shipper_id
ORDER BY c.customer_id

-- EXERCISE
SELECT order_date,
	   order_id,
       c.first_name,
       sh.name AS shipper,
       os.name
FROM orders o
LEFT JOIN customers c
	 ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
     ON o.shipper_id = sh.shipper_id
LEFT JOIN order_statuses os
	 ON o.status = os.order_status_id
