SELECT COUNT(*) FROM customers;

EXPLAIN SELECT customer_id FROM customers WHERE state = 'CA';

CREATE INDEX idx_state ON customers(state);

-- EXERCISE: Write a query to find customers with more than a 1000 points
EXPLAIN SELECT customer_id FROM customers
WHERE points > 1000;

-- Creating an index
ALTER TABLE customers DROP INDEX idx_points;
CREATE INDEX idx_points ON customers(points);

-- viewing indexes
SHOW INDEXES IN customers;

ANALYZE TABLE customers;

SHOW INDEXES IN orders;

-- prefix indexes
CREATE INDEX idx_lastname ON customers(last_name(5));

-- how to find the optimal prefix length
SELECT COUNT(DISTINCT LEFT(last_name, 1)),
       COUNT(DISTINCT LEFT(last_name, 3)),
       COUNT(DISTINCT LEFT(last_name, 5)),
       COUNT(DISTINCT LEFT(last_name, 7))
FROM customers;


-- full-text index
USE sql_blog;
SELECT * FROM posts
WHERE title LIKE '%react redux%' OR body LIKE '%react redux%';

CREATE FULLTEXT INDEX idx_title_body ON posts(title, body);
 
SELECT *, MATCH(title, body) AGAINST('react redux')
FROM posts
WHERE MATCH(title, body) AGAINST('react redux');

-- boolean mode
SELECT *, MATCH(title, body) AGAINST('react redux')
FROM posts
WHERE MATCH(title, body) AGAINST('react -redux +form' IN BOOLEAN MODE);

-- searching for exact phrases
SELECT *, MATCH(title, body) AGAINST('react redux')
FROM posts
WHERE MATCH(title, body) AGAINST('"handling a form in react"' IN BOOLEAN MODE);

-- composite indexes
USE sql_store;
SHOW INDEXES IN customers;

CREATE INDEX idx_state_points ON customers(state, points);
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' and points > 1000;

DROP INDEX idx_state_points ON customers;

-- Order of columns in composite indexes
EXPLAIN SELECT customer_id
FROM customers
USE INDEX (idx_state_lastname)
WHERE state = 'NY' AND last_name LIKE 'A%';

SELECT
     COUNT(DISTINCT(state)),
     COUNT(DISTINCT(last_name))
FROM customers;

CREATE INDEX idx_state_lastname ON customers(state, last_name);
DROP INDEX idx_lastname_state ON customers;

EXPLAIN SELECT customer_id
FROM customers
WHERE last_name LIKE 'A%';

