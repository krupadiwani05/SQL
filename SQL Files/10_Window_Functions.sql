-- =========================================
-- WINDOW FUNCTIONS
-- =========================================

SELECT * FROM bank_dataset;

-- =========================================
-- RANK()
-- =========================================

SELECT customerid,
       estimatedsalary,
       RANK() OVER(ORDER BY estimatedsalary DESC) AS rank_no
FROM bank_dataset;

-- Top 5 Ranked Records

SELECT customerid,
       estimatedsalary,
       RANK() OVER(ORDER BY estimatedsalary DESC) AS rank_no
FROM bank_dataset
LIMIT 5;

-- Rank with Offset

SELECT customerid,
       estimatedsalary,
       RANK() OVER(ORDER BY estimatedsalary DESC) AS rank_no
FROM bank_dataset
LIMIT 5 OFFSET 1;

-- =========================================
-- DENSE_RANK()
-- =========================================

SELECT customerid,
       estimatedsalary,
       DENSE_RANK() OVER(ORDER BY estimatedsalary DESC) AS dense_rank_no
FROM bank_dataset;

-- =========================================
-- PARTITION BY WITH RANK()
-- =========================================

SELECT *
FROM transactions;

-- Ranking based on Account Type

SELECT account_no,
       account_type,
       transaction_amount,
       RANK() OVER(
           PARTITION BY account_type
           ORDER BY transaction_amount
       ) AS rank_account_type
FROM transactions;

-- =========================================
-- RUNNING TOTAL
-- =========================================

SELECT transaction_id,
       account_type,
       transaction_amount,
       app,
       SUM(transaction_amount)
       OVER(
           PARTITION BY app
           ORDER BY transaction_amount
       ) AS running_amount
FROM transactions;

-- =========================================
-- WINDOW FUNCTIONS USING BANK_DATASET
-- =========================================

SELECT *
FROM bank_dataset;

-- Rank Balance by Customer ID

SELECT rownumber,
       customerid,
       balance,
       RANK() OVER(
           PARTITION BY balance
           ORDER BY customerid
       ) AS rank_balance
FROM bank_dataset;

-- Running Sum of Credit Score by Gender

SELECT rownumber,
       creditscore,
       gender,
       SUM(creditscore)
       OVER(
           PARTITION BY gender
           ORDER BY creditscore
       ) AS sum_of_running_credit_score
FROM bank_dataset;

-- Running Average of Credit Score by Gender

SELECT rownumber,
       creditscore,
       gender,
       AVG(creditscore)
       OVER(
           PARTITION BY gender
           ORDER BY creditscore
       ) AS avg_of_running_credit_score
FROM bank_dataset;

-- Running Count of Credit Score by Gender

SELECT rownumber,
       creditscore,
       gender,
       COUNT(creditscore)
       OVER(
           PARTITION BY gender
           ORDER BY creditscore
       ) AS count_of_running_credit_score
FROM bank_dataset;

-- Running Minimum Tenure by Geography

SELECT rownumber,
       tenure,
       geography,
       MIN(tenure)
       OVER(
           PARTITION BY geography
           ORDER BY tenure
       ) AS min_of_running_tenure
FROM bank_dataset;

-- Running Maximum Tenure by Geography

SELECT rownumber,
       tenure,
       geography,
       MAX(tenure)
       OVER(
           PARTITION BY geography
           ORDER BY tenure
       ) AS max_of_running_tenure
FROM bank_dataset;

-- =========================================
-- RANK FILTERING USING SUBQUERY
-- =========================================

SELECT *
FROM data_practice;

SELECT account_no,
       balance_amount,
       rank_no
FROM (
    SELECT account_no,
           balance_amount,
           RANK() OVER(ORDER BY balance_amount DESC) AS rank_no
    FROM data_practice
) AS t
WHERE rank_no IN (2,5);