-- USE sql_store;

-- SELECT order_id, 
       -- c.first_name, 
       -- c.last_name, 
       -- os.name AS order_status
-- FROM orders o
-- JOIN customers c
     -- ON o.customer_id = c.customer_id
-- JOIN order_statuses os
     -- ON o.status = os.order_status_id
     
     -- EXERCISE
USE sql_invoicing;

SELECT p.payment_id,
	   p.invoice_id,
       p.date,
       p.amount,
	   c.name AS client,
       pm.name AS 'payment method'
FROM payments p
JOIN clients c
     ON p.client_id = c.client_id
JOIN payment_methods pm
     ON p.payment_method = pm.payment_method_id