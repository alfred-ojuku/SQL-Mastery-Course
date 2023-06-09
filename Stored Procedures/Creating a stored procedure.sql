
DELIMITER $$
CREATE PROCEDURE get_clients()
BEGIN
    SELECT * FROM clients;
END $$

DELIMITER ;

-- EXERCISE
DELIMITER $$
CREATE PROCEDURE get_invoice_with_balance()
BEGIN
    SELECT * FROM invoices_with_balance;
END $$