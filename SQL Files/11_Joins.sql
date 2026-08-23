-- =========================================
-- JOINS
-- =========================================

USE joins;

SELECT * FROM customers;
SELECT * FROM orders;

-- =========================================
-- INNER JOIN
-- =========================================

-- Give me all the customer names where we have quantity and sales

SELECT c.name,
       o.qty,
       o.sales
FROM customers c
INNER JOIN orders o
ON c.cust_id = o.cust_id;

-- =========================================
-- LEFT JOIN
-- =========================================

-- Give me those customer IDs where I don't have any sales

SELECT c.cust_id,
       o.sales
FROM customers c
LEFT JOIN orders o
ON c.cust_id = o.cust_id
WHERE o.cust_id IS NULL;

-- =========================================
-- RIGHT JOIN
-- =========================================

-- Same result as LEFT JOIN (customers without sales)

SELECT c.cust_id,
       o.sales
FROM orders o
RIGHT JOIN customers c
ON o.cust_id = c.cust_id
WHERE o.cust_id IS NULL;

-- =========================================
-- RIGHT JOIN (ORPHAN RECORDS)
-- =========================================

-- Give me cust_id where sales happened
-- but customer records are not available
-- in the customers table

SELECT o.cust_id,
       o.sales
FROM customers c
RIGHT JOIN orders o
ON c.cust_id = o.cust_id
WHERE c.cust_id IS NULL;