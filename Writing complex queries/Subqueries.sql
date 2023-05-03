SELECT * 
FROM products
WHERE unit_price > ( SELECT unit_price
                     FROM products
                     WHERE product_id = 3);
                     
-- EXERCISE
SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) AS 'Average Salary'
                 FROM  employees)

