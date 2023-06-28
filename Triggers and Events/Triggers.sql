DELIMITER $$

DROP TRIGGER IF EXISTS payment_after_insert;

CREATE TRIGGER payment_after_insert
       AFTER INSERT ON payments
       FOR EACH ROW
BEGIN
      UPDATE invoices
      SET payment_total = payment_total + NEW.amount
      WHERE invoice_id = NEW.invoice_id;
END $$
DELIMITER ;

-- inserting new values into the payment table
INSERT INTO payments
VALUES (DEFAULT, 5, 3, '2023-6-11', 10, 1)

-- exercise
DELIMITER $$

DROP TRIGGER IF EXISTS payment_after_insert;

CREATE TRIGGER reduce_payment_after_delete
       AFTER DELETE ON payments
       FOR EACH ROW
BEGIN
      UPDATE invoices
      SET payment_total = payment_total - OLD.amount
      WHERE invoice_id = OLD.invoice_id;
END $$
DELIMITER ;

-- deleting values from the payment table
DELETE FROM payments
WHERE payment_id = 9