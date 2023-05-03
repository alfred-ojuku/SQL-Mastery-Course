-- Select invoices larger than all invoice of client 3
SELECT *
FROM invoices
WHERE invoice_total > (SELECT MAX(invoice_total) 
                       FROM invoices
					   WHERE client_id = 3);
                       
-- Solving the problem using the all keyword
SELECT *
FROM invoices
WHERE invoice_total > ALL (
    SELECT invoice_total
    FROM invoices
    WHERE client_id = 3
);
