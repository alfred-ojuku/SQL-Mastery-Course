USE sql_invoicing;

SELECT state,
       city,
       SUM(invoice_total) AS total_purchases
FROM invoices i
JOIN clients USING (client_id)
GROUP BY state, city WITH ROLLUP;

-- EXERCISE
SELECT name,
       SUM(amount) AS total
FROM payments p
JOIN payment_methods pm 
	 ON p.payment_method = pm.payment_method_id
GROUP BY name WITH ROLLUP