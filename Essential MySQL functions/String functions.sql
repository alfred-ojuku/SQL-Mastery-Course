SELECT LENGTH('Alfred');

SELECT UPPER('Alfred');

SELECT LOWER('Alfred');

SELECT LTRIM('  Alfred');

SELECT RTRIM('Alfred  ');

SELECT TRIM('  Alfred  ');

SELECT LEFT('Alfred', 2);

SELECT RIGHT('Alfred', 4);

SELECT SUBSTRING('Alfred', 2, 4);
SELECT SUBSTRING('Alfred', 2);

SELECT LOCATE('q', 'Kindergarten');

SELECT REPLACE('Kindergarten', 'garten', 'garden');

SELECT CONCAT('Al', 'fred');

USE sql_store;

SELECT CONCAT(first_name, ' ', last_name)
FROM customers;