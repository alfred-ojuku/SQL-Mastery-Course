-- User/Session defined variables
SET @invoices_count = 0;

DROP PROCEDURE IF EXISTS get_risk_factor;

DELIMITER $$
CREATE PROCEDURE get_risk_factor()
BEGIN
     DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
     DECLARE invoices_total DECIMAL(9, 2);
     DECLARE invoice_count INT;
     
	SELECT COUNT(*), SUM(invoice_total)
    INTO invoice_count, invoices_total
    FROM invoices;
    
    SET risk_factor = invoices_total / invoice_count * 5;
    SELECT risk_factor;
END $$
DELIMITER ;
