# Customer Invoice & Payment Analytics System

## 📌 Overview

This project simulates a real-world **Accounts Receivable (AR) system** using SQL by transforming raw transaction data into invoice-level analytics.
It focuses on identifying overdue payments, evaluating customer risk, and improving cash flow visibility.

---

## 📊 Dataset

* Source: Online Retail Dataset
* The dataset contains transactional sales data which was:

  * Cleaned to remove invalid/missing values
  * Aggregated to generate invoice-level records
  * Transformed into structured relational tables

---

## ⚙️ Data Processing & Transformation

* Removed null and inconsistent records (missing customer IDs, negative quantities/prices)
* Derived invoice-level revenue using:

  ```
  Amount = Quantity × UnitPrice
  ```
* Aggregated transactions by invoice to create a normalized dataset
* Converted raw data into structured tables: `customers`, `invoices`, and `payments`

---

## 🏗️ Database Design

* Designed a relational schema with:

  * Primary keys and foreign key constraints
  * Separation of customers, invoices, and payments
* Ensured data integrity and scalability similar to enterprise systems

---

## 🔄 Business Logic Simulation

To replicate real-world finance workflows:

* Simulated **Net-30 payment terms** using due dates
* Generated payment records to mimic real customer behavior
* Classified invoices into:

  * `Paid`
  * `Overdue`
  * `Pending`

---

## 📈 Key Analytics Implemented

* **Overdue Invoice Detection**
  Identifies invoices past their due date

* **Aging Bucket Analysis**
  Segments overdue invoices into:

  * 0–30 days
  * 31–60 days
  * 60+ days

* **Days Sales Outstanding (DSO)**
  Measures average collection time per customer

* **Customer Risk Analysis**
  Ranks customers based on outstanding dues

* **Monthly Collection Trends**
  Tracks payment patterns over time

---

## 🛠️ Tech Stack

* **Database:** MySQL
* **Querying:** SQL (JOIN, GROUP BY, CASE WHEN, DATE FUNCTIONS)
* **Data Processing:** Google Sheets / Excel
* **Execution:** db-fiddle (online SQL environment)

---

## ▶️ How to Run

1. Create tables:

   ```sql
   create_tables.sql
   ```

2. Load data:

   * Import CSV files into tables (`customers`, `invoices`)

3. Apply business logic:

   ```sql
   business_logic.sql
   ```

4. Run analytics:

   ```sql
   analytics_queries.sql
   ```

---

## 💼 Business Relevance

This project mirrors workflows used in enterprise finance platforms, where:

* Companies track outstanding invoices
* Prioritize collections based on risk
* Optimize working capital and cash flow

---

## 🚀 Key Learnings

* Data transformation from raw transactions to structured business models
* Writing complex SQL queries for real-world analytics
* Understanding financial metrics like DSO and credit risk
* Simulating enterprise-level workflows using data

---

## 📌 Future Improvements

* Build a dashboard using Power BI or Tableau
* Automate data pipeline using Python
* Add machine learning for payment prediction
* Integrate backend API for real-time analytics

---

## 👨‍💻 Author

Tanmay Raj
