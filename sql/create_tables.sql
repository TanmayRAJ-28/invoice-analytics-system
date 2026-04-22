CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  country VARCHAR(50)
);

CREATE TABLE invoices (
  invoice_id VARCHAR(20),
  customer_id INT,
  invoice_date DATETIME,
  amount DECIMAL(10,2),
  PRIMARY KEY (invoice_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE payments (
  payment_id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_id VARCHAR(20),
  payment_date DATE,
  amount_paid DECIMAL(10,2)
);