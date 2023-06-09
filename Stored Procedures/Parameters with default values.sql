DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state
(
state  CHAR(2)
)
BEGIN
    IF state IS NULL THEN 
       SET state = 'CA';
	END IF;
    SELECT * FROM clients c
    WHERE c.state = state;
END $$
DELIMITER ;


-- OPTION 2
DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state
(
state  CHAR(2)
)
BEGIN
    IF state IS NULL THEN 
       SELECT * FROM clients c;
	ELSE
       SELECT * FROM clients c
       WHERE c.state = state;
	END IF;
END $$
DELIMITER ;

-- OPTION 3
DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state
(
state  CHAR(2)
)
BEGIN
	SELECT * FROM clients c
	WHERE c.state = IFNULL(state, c.state);
END $$
DELIMITER ;

-- EXERCISE
DROP PROCEDURE IF EXISTS get_payments;

DELIMITER $$
CREATE PROCEDURE get_payments
(
  client_id INT,
  payment_id TINYINT
)
BEGIN
    SELECT * FROM payments p
    WHERE p.client_id = IFNULL(client_id, p.client_id) AND p.payment_id = IFNULL(payment_id, p.payment_id);
END $$
DELIMITER ;