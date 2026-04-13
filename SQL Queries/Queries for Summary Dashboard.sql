USE  [Bank Loan DB];
select * from Bank_loan_Data

SELECT COUNT(id) as Total_Application FROM Bank_loan_Data;

SELECT COUNT(id) as MTD_Total_Application FROM Bank_loan_Data
WHERE MONTH(issue_date) =12 AND YEAR(issue_date) = 2021;

SELECT COUNT(id) as MTD_Total_Application FROM Bank_loan_Data
WHERE MONTH(issue_date) = MONTH(GETDATE()) AND YEAR(issue_date) = YEAR(GETDATE());

SELECT COUNT(id) as PMTD_Total_Application FROM Bank_loan_Data
WHERE MONTH(issue_date) =11 AND YEAR(issue_date) = 2021; 

SELECT 
   ROUND((MTD - PMTD) * 100.0 / PMTD, 2) AS Increase_Percentage
FROM (
    SELECT 
        (SELECT COUNT(id) 
         FROM dbo.Bank_loan_Data
         WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021) AS MTD,

        (SELECT COUNT(id) 
         FROM dbo.Bank_loan_Data
         WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021) AS PMTD
) t;

SELECT SUM(loan_amount) as Total_Funded_Amount 
FROM Bank_loan_Data;

SELECT SUM(loan_amount) as MTD_Total_Funded_Amount FROM Bank_loan_Data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT SUM(loan_amount) as PMTD_Total_Funded_Amount FROM Bank_loan_Data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;


SELECT ROUND((MTD-PMTD)*100.0/ NULLIF(PMTD,0),2) AS Increase_Percentage 
FROM ( SELECT 
       (SELECT SUM(loan_amount)  FROM Bank_loan_Data 
        WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021) AS MTD,
         (SELECT SUM(loan_amount)  FROM Bank_loan_Data 
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021) AS PMTD)T;

SELECT SUM(total_payment) as Total_Received_Amount 
FROM Bank_loan_Data;

SELECT SUM(total_payment) as MTD_Total_Received_Amount FROM Bank_loan_Data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT SUM(total_payment) as PMTD_Total_Received_Amount FROM Bank_loan_Data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

SELECT ROUND((MTD - PMTD) * 100 / NULLIF(PMTD,0),2) AS Increase_Percetnage 
FROM ( SELECT (
         SELECT SUM(total_payment) FROM Bank_loan_Data 
         WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021) AS MTD,
         (SELECT SUM(total_payment)  FROM Bank_loan_Data 
         WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021) AS PMTD)T;


SELECT Round(AVG(int_rate),4)*100 AS Avergae_Interest_Rate from Bank_loan_Data;

SELECT Round(AVG(int_rate),4)*100 AS MTD_Avergae_Interest_Rate from Bank_loan_Data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;


SELECT Round(AVG(int_rate),4)*100 AS PMTD_Avergae_Interest_Rate from Bank_loan_Data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

SELECT ROUND((MTD - PMTD)*100 / NULLIF(PMTD,0),2) AS INCREASE_PERCENTAGE
FROM 
( SELECT (
    SELECT ROUND(AVG(int_rate),2) FROM Bank_loan_Data 
    WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021) AS MTD,
    (SELECT Round(AVG(int_rate),4)  from Bank_loan_Data
     WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021 ) AS PMTD)T;

SELECT ROUND(AVG(dti),3) AS Average_DTI FROM Bank_loan_Data;

SELECT ROUND(AVG(dti),3) AS MTD_Average_DTI FROM Bank_loan_Data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021;

SELECT ROUND(AVG(dti),3) AS PMTD_Average_DTI FROM Bank_loan_Data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021;

SELECT ROUND((MTD - PMTD)*100/NULLIF(PMTD,0),4)*100 AS Percentage_Increase
FROM (SELECT(
SELECT ROUND(AVG(dti),3) FROM Bank_loan_Data 
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021) AS MTD,
(
SELECT ROUND(AVG(dti),3) FROM Bank_loan_Data 
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021) AS PMTD)T;


SELECT 
COUNT ( CASE WHEN loan_status ='Fully Paid' OR loan_status ='Current' THEN id  END)*100
/ COUNT(id) AS Good_Loan_Percentage
FROM Bank_loan_Data;