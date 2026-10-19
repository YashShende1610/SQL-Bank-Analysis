
-- Task 1 :- Year wise loan amount Stats

SELECT 
    CONCAT('20', RIGHT(issue_d, 2)) AS loan_Taking_Year,
    SUM(loan_amnt) AS Total_Loan_IssuedAmount,
    AVG(loan_amnt) AS Average_Loan_Amount,
    MAX(loan_amnt) AS Maximum_Loan_Amount,
    MIN(loan_amnt) AS Minimum_Loan_Amount
FROM
    banks_data
GROUP BY CONCAT('20', RIGHT(issue_d, 2))
ORDER BY loan_Taking_Year;

-- Task 2 :- Grade and sub grade wise revol_bal

SELECT 
    grade,
    sub_grade,
    SUM(revol_bal) AS Total_Revol_Bal,
    AVG(revol_bal) AS Average_Revol_Bal
FROM
    banks_data
GROUP BY grade , sub_grade
ORDER BY Total_Revol_Bal DESC;

-- Task 3 :- Total Payment for Verified Status Vs Total Payment for Non Verified Status

SELECT 
    verification_status, 
    SUM(total_pymnt) AS Total_Payment,
    MAX(total_pymnt) AS Maximum_Payment,
    MIN(total_pymnt) AS Minimum_Payment,
    COUNT(*) AS Total_Loans_Issued
FROM
    banks_data
GROUP BY verification_status;

-- Task 4 :- State wise and month wise loan status

SELECT 
    addr_state,
    issue_d AS Month,
    loan_status,
    COUNT(*) AS total_loans
FROM
    banks_data
GROUP BY addr_state , month , loan_status
ORDER BY addr_state;

-- Task 5 :- Home ownership Vs last payment date stats

SELECT 
    member_id,
    home_ownership,
    last_pymnt_d,
    last_pymnt_amnt,
    COUNT(member_id) AS Homes_Asign
FROM
    banks_data
GROUP BY member_id , home_ownership , last_pymnt_d , last_pymnt_amnt
ORDER BY last_pymnt_d;































