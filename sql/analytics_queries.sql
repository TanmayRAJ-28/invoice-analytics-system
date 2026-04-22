-- 1. Overdue Invoices
SELECT 
  invoice_id,
  customer_id,
  amount,
  DATEDIFF(CURDATE(), due_date) AS days_overdue
FROM invoices
WHERE status = 'overdue'
ORDER BY days_overdue DESC;

-- 2. High Risk Customers
SELECT 
  customer_id,
  SUM(amount) AS total_due
FROM invoices
WHERE status = 'overdue'
GROUP BY customer_id
ORDER BY total_due DESC;

-- 3. Aging Buckets
SELECT 
  invoice_id,
  amount,
  CASE 
    WHEN DATEDIFF(CURDATE(), due_date) <= 30 THEN '0-30 Days'
    WHEN DATEDIFF(CURDATE(), due_date) <= 60 THEN '31-60 Days'
    ELSE '60+ Days'
  END AS aging_bucket
FROM invoices
WHERE status = 'overdue';

-- 4. DSO Calculation
SELECT 
  customer_id,
  AVG(DATEDIFF(payment_date, invoice_date)) AS avg_days_to_pay
FROM invoices i
JOIN payments p ON i.invoice_id = p.invoice_id
GROUP BY customer_id;