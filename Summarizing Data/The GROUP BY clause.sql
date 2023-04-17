SELECT client_id AS client,
       SUM(invoice_total) AS total_payment
FROM invoices
WHERE invoice_date >= '2019-07-01'
GROUP BY client_id
ORDER BY total_payment DESC;

-- GROUPING BY MULTIPLE COLUMNS
SELECT state,
       city,
      SUM(invoice_total) AS total_payment
FROM invoices i
JOIN clients c USING(client_id)
GROUP BY city, state;

-- EXERCISE
SELECT p.date,
       name, 
       SUM(amount) AS total_payment
FROM payments p
JOIN payment_methods pm 
     ON p.payment_method = pm.payment_method_id
GROUP BY date, name
ORDER BY date