# 📊 Bank Loan Analysis Dashboard (SQL + Excel)

## 🚀 Project Overview

This project analyzes a bank’s loan dataset to evaluate lending performance, monitor portfolio health, and identify key risk and growth trends using **SQL and Excel dashboards**.

The objective is to transform raw financial data into **actionable business insights** that support better lending decisions and risk management.

---

## 📌 Problem Statement

The project aims to:

* Track key KPIs:

  * Total Loan Applications
  * Total Funded Amount
  * Total Amount Received
  * Average Interest Rate
  * Average Debt-to-Income Ratio (DTI)

* Analyze:

  * Month-to-Date (MTD) performance
  * Month-over-Month (MoM) growth

* Classify loans into:

  * ✅ Good Loans (Fully Paid, Current)
  * ❌ Bad Loans (Charged Off)

* Understand loan distribution across:

  * Geography (State-wise)
  * Loan Purpose
  * Employment Length
  * Loan Term
  * Home Ownership

📄 Detailed Problem Statement:
👉 

---

## 🛠️ Tools & Technologies Used

* **SQL Server** → Data extraction, KPI calculations
* **Excel** → Dashboard creation & visualization
* **GitHub** → Project hosting

---

## 🧠 SQL Analysis

SQL queries were used to:

* Calculate KPIs and financial metrics
* Perform MTD vs PMTD comparisons
* Compute growth rates (% change)
* Classify loans (Good vs Bad)
* Aggregate data by:

  * Month
  * State
  * Purpose
  * Loan Term
  * Employment Length
  * Home Ownership

📄 SQL Query Document:
👉 

---

## 📊 Dashboard Screenshots

### 🔹 Summary Dashboard
![Summary Dashboard](./Screenshots/summary_dashboard.png)

### 🔹 Overview Dashboard
![Overview Dashboard](./Screenshots/overview_dashboard.png)


## 📈 Key Insights & Business Impact

### 📊 Strong Portfolio Health

* **86.18%** of loans are classified as **Good Loans**
* Only **13.82%** are **Charged Off**

👉 Indicates a **low default rate** and a relatively stable lending portfolio.

---

### 📈 Growing Loan Demand

* Loan applications show a **steady upward trend throughout the year**

👉 Suggests increasing credit demand, requiring improved **risk evaluation and capital allocation strategies**.

---

### 💳 Debt-Driven Borrowing Behavior

* Majority of loans are issued for:

  * Credit Card
  * Debt Consolidation

👉 Indicates customers are borrowing to **manage existing liabilities**, which may increase future credit risk.

---

### 🌍 Regional Lending Patterns

* Loan applications are **concentrated in specific states**

👉 Enables opportunities for:

* Targeted expansion
* Region-specific lending strategies

---

### ⚠️ Risk Indicators Identified

* Higher **Interest Rates** and **DTI ratios** observed in **Charged Off loans**

👉 These variables can be leveraged to build a **loan default prediction model**.

---

## 📂 Project Structure

```
Bank-Loan-Analysis/
│── Bank Loan Data/
│── SQL Queries/
│── Screenshots/
│── Terminologies/
│── Financial_Loan_Data.xlsx
│── Problems Statements.docx
│── Readme.md
```

---

## 🎯 Conclusion

This project demonstrates how financial data can be transformed into meaningful insights using SQL and Excel.

It highlights:

* KPI tracking
* Loan portfolio analysis
* Risk identification
* Data visualization for decision-making

---

## 🚀 Future Improvements

* Build an interactive dashboard using **Power BI**
* Automate data pipeline using Python/SQL integration
* Develop a **machine learning model** for loan default prediction

---
