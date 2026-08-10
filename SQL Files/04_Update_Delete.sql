-- =========================================
-- UPDATE QUERIES
-- =========================================

-- Update customer name
UPDATE customers
SET customer_name = 'Diya Sharma'
WHERE customer_id = 3;

-- Update phone number
UPDATE customers
SET phone = '8745691235'
WHERE customer_id = 2;

-- Update city
UPDATE customers
SET city = 'Channai'
WHERE customer_id = 4;

-- Update transaction type
UPDATE transaction
SET trans_type = 'Cash'
WHERE transaction_id = 1546;

-- Update using IN clause
UPDATE customers
SET city = 'Mumbai'
WHERE customer_id IN (1, 3);

-- Update multiple columns
UPDATE customers
SET customer_name = 'Maya',
    city = 'Pune'
WHERE customer_id = 3;

-- =========================================
-- DELETE QUERIES
-- =========================================

DELETE FROM transaction
WHERE customer_id = 4;

DELETE FROM accounts
WHERE customer_id = 4;

DELETE FROM customers
WHERE customer_id = 4;

-- =========================================
-- VERIFY DATA
-- =========================================

SELECT * FROM customers;
SELECT * FROM transaction;
SELECT * FROM accounts;

-- =========================================
-- TRUNCATE TABLE
-- =========================================

TRUNCATE TABLE accounts;

-- =========================================
-- DROP TABLE
-- =========================================

DROP TABLE accounts;