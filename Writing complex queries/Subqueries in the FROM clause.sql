SELECT *
FROM ( SELECT client_id,
       c.name,
       (SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id) AS Total_sales,
	   (SELECT AVG (invoice_total) FROM invoices) AS Average,
	   (SELECT(Total_sales - Average)) AS Difference
   FROM clients c
   LEFT JOIN invoices USING (client_id)
   GROUP BY client_id, name 
   ) AS sales_summary
   WHERE total_sales IS NOT Null