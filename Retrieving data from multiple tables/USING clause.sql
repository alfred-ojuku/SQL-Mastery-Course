SELECT o.order_id,
       c.first_name,
       sh.name AS shippers
FROM orders o
JOIN customers c
     -- ON o.customer_id = c.customer_id
     USING (customer_id)
LEFT JOIN shippers sh
     USING (shipper_id);
     
-- EXERCISE
USE sql_invoicing;

SELECT p.date,
       c.name AS client,
	   i.payment_total AS amount,
       pm.name AS 'Payment method'
FROM payments p
JOIN clients c
     USING (client_id)
JOIN invoices i
	 USING (invoice_id)
LEFT JOIN payment_methods pm
     ON p.payment_method = pm.payment_method_id