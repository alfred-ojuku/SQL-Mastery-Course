-- Return customers born 
				--  between 1/1/1990 and 1/1/2000

USE sql_store;

SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'
