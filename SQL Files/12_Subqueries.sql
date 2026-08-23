-- =========================================
-- SUBQUERIES
-- =========================================

USE hdfc_bank;

SELECT * FROM bank_dataset;

-- =========================================
-- SUBQUERY WITH AVG()
-- =========================================

-- Customers having Estimated Salary greater
-- than average Estimated Salary

SELECT customerid,
       surname,
       estimatedsalary
FROM bank_dataset
WHERE estimatedsalary >
(
    SELECT AVG(estimatedsalary)
    FROM bank_dataset
);

-- Customers having Credit Score greater
-- than average Credit Score

SELECT customerid,
       surname,
       creditscore
FROM bank_dataset
WHERE creditscore >
(
    SELECT AVG(creditscore)
    FROM bank_dataset
);

-- =========================================
-- SUBQUERY WITH IN
-- =========================================

SELECT * FROM accounts;
SELECT * FROM transactions;

-- Show customer name where account type is Saving
-- and transaction amount is greater than 3000

SELECT account_no,
       customer_name
FROM accounts
WHERE account_no IN
(
    SELECT account_no
    FROM transactions
    WHERE account_type = 'Saving'
    AND transaction_amount > 3000
);

-- =========================================
-- SECOND HIGHEST TRANSACTION AMOUNT
-- =========================================

SELECT MAX(transaction_amount)
FROM transactions
WHERE transaction_amount <
(
    SELECT MAX(transaction_amount)
    FROM transactions
);

SELECT *
FROM transactions
ORDER BY transaction_amount ASC;

-- =========================================
-- SUBQUERY WITH ALL
-- =========================================

-- Show transaction amount where amount is lower
-- than all Credit transactions

SELECT account_no,
       transaction_amount,
       transaction_type
FROM transactions
WHERE transaction_amount < ALL
(
    SELECT transaction_amount
    FROM transactions
    WHERE transaction_type = 'Credit'
);