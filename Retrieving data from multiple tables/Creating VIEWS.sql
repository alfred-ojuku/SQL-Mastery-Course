USE sql_invoicing;

CREATE VIEW sales_by_client AS
SELECT c.client_id,
       c.name,
       SUM(invoice_total) AS total_sales
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY c.client_id, c.name;

-- Using view as a table
SELECT *
FROM sales_by_client
ORDER BY total_sales DESC;

-- 	EXERCISE
CREATE VIEW clients_balance AS 
SELECT c.client_id,
       c.name,
       SUM(i.invoice_total - i.payment_total) AS balance
FROM clients c
JOIN invoices i USING (client_id)
GROUP BY c.client_id, c.name
