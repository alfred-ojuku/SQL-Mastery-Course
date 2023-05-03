SELECT *
FROM clients
WHERE client_id = ANY (SELECT DISTINCT client_id
						FROM invoices);
                        
-- IN ==  = ANY