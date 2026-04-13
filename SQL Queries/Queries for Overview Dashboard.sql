SELECT 
COUNT ( CASE WHEN loan_status ='Fully Paid' OR loan_status ='Current' THEN id  END)*100
/ COUNT(id) AS Good_Loan_Percentage
FROM Bank_loan_Data;

SELECT 
COUNT ( CASE WHEN loan_status ='Fully Paid' OR loan_status ='Current' THEN id  END) AS Good_Loan_Application
FROM Bank_loan_Data;

SELECT COUNT(id) AS Good_Loan_Application FROM Bank_loan_Data
WHERE loan_status = 'Fully Paid' OR loan_status ='Current';

SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount FROM Bank_loan_Data 
WHERE loan_status = 'Fully Paid' OR loan_status ='Current';

SELECT SUM(total_payment) AS Good_Loan_Recieved_Amount FROM Bank_loan_Data 
WHERE loan_status = 'Fully Paid' OR loan_status ='Current';


SELECT 
COUNT( CASE WHEN loan_status ='Charged Off' THEN id END) *100
/ COUNT(id) AS Bad_Loan_Percentage
FROM Bank_loan_Data;

SELECT 
COUNT ( CASE WHEN loan_status ='Charged Off' THEN id  END) AS Bad_Loan_Application
FROM Bank_loan_Data;

SELECT COUNT(id) AS Bad_Loan_Application FROM Bank_loan_Data
WHERE loan_status ='Charged Off';

SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount FROM Bank_loan_Data 
WHERE loan_status ='Charged Off';

SELECT SUM(total_payment) AS Bad_Loan_Recieved_Amount FROM Bank_loan_Data 
WHERE loan_status ='Charged Off';

SELECT 
loan_status, 
Count(id) AS Total_loan_Applications,
Sum(total_payment) AS Total_Amount_Recievd,
SUM(loan_amount) AS Total_Funded_Amount,
ROUND(AVG(int_rate * 100),4) AS Intrest_Rate,
ROUND(AVG(dti * 100),4) AS DTI 
FROM 
Bank_loan_Data
GROUP BY 
loan_status

SELECT 
loan_status, 
Count(id) AS MTD_Total_loan_Applications,
Sum(total_payment) AS MTD_Total_Amount_Recievd,
SUM(loan_amount) AS MTD_Total_Funded_Amount,
ROUND(AVG(int_rate * 100),4) AS MTD_Intrest_Rate,
ROUND(AVG(dti * 100),4) AS MTD_DTI 
FROM 
Bank_loan_Data
WHERE Month(issue_date) = 12 AND YEAR(issue_date) = 2021
GROUP BY 
loan_status;

SELECT 
      MONTH(issue_date) AS Month_Number, 
      DATENAME(MONTH,issue_date) AS Month,
      Count(id) AS Total_loan_Applications,
      Sum(total_payment) AS Total_Amount_Recievd,
      SUM(loan_amount) AS Total_Funded_Amount
FROM 
      Bank_loan_Data
GROUP BY MONTH(issue_date), 
DATENAME(MONTH,issue_date)
ORDER BY MONTH(issue_date);

