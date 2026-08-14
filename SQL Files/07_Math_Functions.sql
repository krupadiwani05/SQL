-- =========================================
-- MATHEMATICAL FUNCTIONS
-- =========================================

-- ROUND
SELECT ROUND(45.678, 2);

-- ABS (Absolute Value)
SELECT ABS(-25);

-- CEIL (Next Integer)
SELECT CEIL(4.2);

-- FLOOR (Nearest Lower Integer)
SELECT FLOOR(4.8);

-- SQRT (Square Root)
SELECT SQRT(64);

-- POWER
SELECT POWER(2,3);

-- MOD (Remainder)
SELECT MOD(10,3);

-- RAND (Random Number between 0 and 1)
SELECT RAND();

-- =========================================
-- MATHEMATICAL FUNCTIONS USING BANK_DATASET
-- =========================================

SELECT * FROM bank_dataset;

-- ROUND
SELECT ROUND(balance)
FROM bank_dataset;

-- ABS
SELECT ABS(-124);

SELECT ABS(rownumber)
FROM bank_dataset;

-- CEIL
SELECT CEIL(estimatedsalary)
FROM bank_dataset;

-- FLOOR
SELECT FLOOR(estimatedsalary)
FROM bank_dataset;

-- SQRT
SELECT rownumber,
       SQRT(rownumber)
FROM bank_dataset;

-- POWER
SELECT rownumber,
       POWER(rownumber, 2)
FROM bank_dataset;

-- MOD
SELECT MOD(creditscore, 3)
FROM bank_dataset;

-- RAND
SELECT ROUND(RAND(tenure) * 150)
FROM bank_dataset;