USE sql_invoicing;
SELECT MAX(invoice_total) AS Highest,
       MAX(payment_date) AS 'latest date', 
       MIN(invoice_total) AS Lowest,
       AVG(invoice_total) AS Average,
       SUM(invoice_total) AS sum,
       SUM(invoice_total * 1.1) AS 'invoice * 1.1',
       COUNT(invoice_total) AS count,
       COUNT(payment_date) AS count_of_payment_date,
       COUNT(*) AS total_records,
       COUNT(DISTINCT client_id)
FROM invoices
WHERE invoice_date > '2019-07-01';

-- EXERCISE
SELECT 'First half of 2019' AS date_range,
       SUM(invoice_total) AS total_sales,
       SUM(payment_total) AS total_payments,
	   SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION
SELECT 'Second half of 2019' AS date_range,
       SUM(invoice_total) AS total_sales,
       SUM(payment_total) AS total_payments,
	   SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'
UNION
SELECT 'Total' AS date_range,
       SUM(invoice_total) AS total_sales,
       SUM(payment_total) AS total_payments,
	   SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices