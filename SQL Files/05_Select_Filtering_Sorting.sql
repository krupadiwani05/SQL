-- =========================================
-- BASIC SELECT QUERIES
-- =========================================

SELECT * FROM accounts;

SELECT * FROM transactions;

SELECT account_no, customer_name, age
FROM accounts;

SELECT transaction_id, transaction_amount, balance_amount
FROM transactions;

-- =========================================
-- ORDER BY (ASCENDING & DESCENDING)
-- =========================================

SELECT *
FROM transactions
ORDER BY balance_amount;

SELECT *
FROM transactions
ORDER BY balance_amount DESC;

-- =========================================
-- WHERE CLAUSE
-- =========================================

-- Current Account

SELECT *
FROM transactions
WHERE account_type = 'Current';

-- Balance greater than 30000

SELECT *
FROM transactions
WHERE balance_amount >= 30000;

-- Saving account and PhonePe transactions

SELECT *
FROM transactions
WHERE account_type = 'Saving'
AND app = 'Phone Pay';

-- Google Pay or ATM transactions

SELECT *
FROM transactions
WHERE app = 'Google Pay'
OR app = 'ATM';

-- =========================================
-- BETWEEN OPERATOR
-- =========================================

SELECT account_no, transaction_amount
FROM transactions
WHERE transaction_amount BETWEEN 3000 AND 10000;

-- Credit transactions with balance less than 3000

SELECT *
FROM transactions
WHERE transaction_type = 'Credit'
AND balance_amount <= 3000;

-- Transaction IDs between 3000 and 7000

SELECT transaction_id
FROM transactions
WHERE transaction_amount BETWEEN 3000 AND 7000;

-- =========================================
-- WHERE + ORDER BY
-- =========================================

SELECT account_type,
       app,
       transaction_amount,
       balance_amount
FROM transactions
WHERE account_type = 'Saving'
AND app = 'Google Pay'
ORDER BY transaction_amount;

-- =========================================
-- LIKE OPERATOR
-- =========================================

SELECT *
FROM accounts
WHERE customer_name LIKE 'A%';

SELECT *
FROM accounts
WHERE customer_name LIKE '%t';

SELECT *
FROM accounts
WHERE customer_name LIKE '%i%';

SELECT *
FROM accounts
WHERE customer_name LIKE '_a%';

-- Credit transaction type

SELECT *
FROM transactions
WHERE transaction_type LIKE 'Credit';

-- App contains "pay"

SELECT *
FROM transactions
WHERE app LIKE '%pay%';

-- Location contains "m"

SELECT *
FROM accounts
WHERE location LIKE '%m%';

-- Customer name ends with "ma"

SELECT *
FROM accounts
WHERE customer_name LIKE '%ma';

-- Second last character is "e"

SELECT *
FROM accounts
WHERE customer_name LIKE '%e_';

-- =========================================
-- CASE STATEMENT
-- =========================================

SELECT transaction_id,
       account_type,
       CASE
           WHEN account_type = 'Saving'
           THEN 'Saving Account'
           ELSE 'Other'
       END AS Result_1
FROM transactions;

SELECT transaction_id,
       transaction_type,
       transaction_amount,
       CASE
           WHEN transaction_type = 'Credit'
           AND transaction_amount >= 10000
           THEN 'High Transaction'
           ELSE 'Low Transaction'
       END AS Result_2
FROM transactions;

-- =========================================
-- LIMIT & OFFSET
-- =========================================

SELECT *
FROM transactions
ORDER BY transaction_amount DESC
LIMIT 1 OFFSET 2;

-- 3rd highest age

SELECT *
FROM accounts
ORDER BY age DESC
LIMIT 1 OFFSET 2;