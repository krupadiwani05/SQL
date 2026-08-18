-- =========================================
-- STRING FUNCTIONS
-- =========================================

-- Convert text to uppercase
SELECT UPPER('sql');

-- Convert text to lowercase
SELECT LOWER('SQL');

-- Concatenate strings
SELECT CONCAT('Hello', ' ', 'World');

-- Length of string
SELECT LENGTH('Database');

-- First 3 characters from left
SELECT LEFT('Database', 3);

-- Last 3 characters from right
SELECT RIGHT('Database', 3);

-- Extract characters from string
SELECT SUBSTRING('Database', 2, 4);

-- Remove extra spaces
SELECT TRIM('  sql  ');

-- Replace text
SELECT REPLACE('I like SQL', 'SQL', 'MYSQL');

-- Reverse string
SELECT REVERSE('SQL');

-- =========================================
-- STRING FUNCTIONS USING BANK_DATASET
-- =========================================

SELECT * FROM bank_dataset;

-- UPPER
SELECT UPPER(surname)
FROM bank_dataset;

-- LOWER
SELECT LOWER(surname)
FROM bank_dataset;

-- CONCAT
SELECT CONCAT(geography, ' ', surname)
FROM bank_dataset;

-- LENGTH
SELECT LENGTH(surname)
FROM bank_dataset;

-- LEFT
SELECT LEFT(geography, 2)
FROM bank_dataset;

-- RIGHT
SELECT RIGHT(geography, 2)
FROM bank_dataset;

-- SUBSTRING
SELECT SUBSTRING(gender, 2)
FROM bank_dataset;

SELECT SUBSTRING(gender, 2, 3)
FROM bank_dataset;

-- TRIM
SELECT TRIM('       hello        ')
FROM bank_dataset;

-- REPLACE
SELECT geography,
       REPLACE(geography, 'France', 'Canada') AS New_Geography
FROM bank_dataset;

-- REVERSE
SELECT geography,
       REVERSE(geography)
FROM bank_dataset
LIMIT 5;