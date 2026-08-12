-- =========================================
-- GROUP BY CLAUSE
-- =========================================

-- Average age by gender

SELECT gender,
       AVG(age) AS Avg_Age
FROM accounts
GROUP BY gender
ORDER BY Avg_Age DESC;

-- Total transaction amount by account type

SELECT account_type,
       SUM(transaction_amount) AS Total_Amount
FROM transactions
GROUP BY account_type
ORDER BY Total_Amount;

-- Maximum balance amount by app

SELECT app,
       MAX(balance_amount) AS Max_Balance
FROM transactions
GROUP BY app;

-- Total balance amount by account type

SELECT account_type,
       SUM(balance_amount) AS Total_Balance
FROM transactions
GROUP BY account_type;

-- Minimum balance amount by account type

SELECT account_type,
       MIN(balance_amount) AS Min_Balance
FROM transactions
GROUP BY account_type;

-- Highest to lowest total balance amount by app

SELECT app,
       SUM(balance_amount) AS Total_Balance
FROM transactions
GROUP BY app
ORDER BY SUM(balance_amount) DESC;

-- =========================================
-- HAVING CLAUSE
-- =========================================

-- Average age by geography greater than 39

SELECT geography,
       ROUND(AVG(age), 0) AS Avg_Age
FROM bank_dataset
GROUP BY geography
HAVING AVG(age) > 39;

-- Average credit score and total estimated salary
-- where average credit score is greater than 650

SELECT geography,
       ROUND(AVG(creditscore)) AS Avg_CreditScore,
       ROUND(SUM(estimatedsalary)) AS Total_Salary
FROM bank_dataset
GROUP BY geography
HAVING AVG(creditscore) > 650;