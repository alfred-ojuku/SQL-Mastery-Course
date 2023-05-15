SELECT 
      invoice_id,
      invoice_total,
      (SELECT AVG (invoice_total) 
       FROM invoices) AS Average,
	  invoice_total - (SELECT Average) AS Difference
FROM invoices;

-- EXERCISE
SELECT client_id,
       c.name,
       (SELECT SUM(invoice_total)) AS Total_sales,
	   (SELECT AVG (invoice_total) FROM invoices) AS Average,
	   (SELECT(SUM(invoice_total) - Average)) AS Difference
FROM clients c
LEFT JOIN invoices USING (client_id)
GROUP BY client_id, name 