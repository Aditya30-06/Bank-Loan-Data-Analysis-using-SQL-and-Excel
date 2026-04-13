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


SELECT 
      address_state,
      Count(id) AS Total_loan_Applications,
      Sum(total_payment) AS Total_Amount_Recievd,
      SUM(loan_amount) AS Total_Funded_Amount
FROM 
      Bank_loan_Data
GROUP BY   address_state
ORDER BY address_state;


SELECT 
      term,
      Count(id) AS Total_loan_Applications,
      Sum(total_payment) AS Total_Amount_Recievd,
      SUM(loan_amount) AS Total_Funded_Amount
FROM 
      Bank_loan_Data
GROUP BY  term
ORDER BY term;


SELECT 
      emp_length,
      Count(id) AS Total_loan_Applications,
      Sum(total_payment) AS Total_Amount_Recievd,
      SUM(loan_amount) AS Total_Funded_Amount
FROM 
      Bank_loan_Data
GROUP BY  emp_length
ORDER BY emp_length;

SELECT 
      purpose,
      Count(id) AS Total_loan_Applications,
      Sum(total_payment) AS Total_Amount_Recievd,
      SUM(loan_amount) AS Total_Funded_Amount
FROM 
      Bank_loan_Data
GROUP BY  purpose
ORDER BY purpose;

SELECT 
      home_ownership,
      Count(id) AS Total_loan_Applications,
      Sum(total_payment) AS Total_Amount_Recievd,
      SUM(loan_amount) AS Total_Funded_Amount
FROM 
      Bank_loan_Data
GROUP BY  home_ownership
ORDER BY home_ownership;

Select * from Bank_loan_Data