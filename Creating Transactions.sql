START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES(2, '2019-01-01', 1);

INSERT INTO order_items
VALUES(LAST_INSERT_ID(), 1, 1, 1);

COMMIT;
