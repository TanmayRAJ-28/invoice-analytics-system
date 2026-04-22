-- Add due_date column
ALTER TABLE invoices ADD due_date DATE;

UPDATE invoices
SET due_date = DATE_ADD(invoice_date, INTERVAL 30 DAY);

-- Add status column
ALTER TABLE invoices ADD status VARCHAR(20);

-- Simulate payments
INSERT INTO payments (invoice_id, payment_date, amount_paid)
SELECT 
  invoice_id,
  DATE_ADD(invoice_date, INTERVAL 20 DAY),
  amount
FROM invoices
LIMIT 500;

-- Update status
UPDATE invoices i
LEFT JOIN payments p ON i.invoice_id = p.invoice_id
SET i.status = 
  CASE 
    WHEN p.payment_id IS NOT NULL THEN 'paid'
    WHEN i.due_date < CURDATE() THEN 'overdue'
    ELSE 'pending'
  END;