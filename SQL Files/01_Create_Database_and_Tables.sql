-- =========================================
-- DATABASE CREATION
-- =========================================

CREATE DATABASE Bank;
USE Bank;

-- =========================================
-- CUSTOMERS TABLE
-- =========================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(25),
    city VARCHAR(25),
    phone CHAR(10)
);

-- =========================================
-- ACCOUNTS TABLE
-- =========================================

CREATE TABLE accounts (
    account_no INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(25),
    balance DECIMAL(10,2) CHECK (balance > 0),
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

-- =========================================
-- TRANSACTION TABLE
-- =========================================

CREATE TABLE transaction (
    transaction_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    transaction_type VARCHAR(25),
    transaction_date DATE NOT NULL,
    aadhar_card CHAR(12) UNIQUE,
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

-- =========================================
-- TABLE DESCRIPTION
-- =========================================

DESC accounts;
DESC transaction;

-- =========================================
-- SECOND DATABASE
-- =========================================

CREATE DATABASE HDFC_bank;
USE HDFC_bank;

-- =========================================
-- JOINS DATABASE
-- =========================================

CREATE DATABASE joins;
USE joins;

-- =========================================
-- TABLES USED IN JOINS DATABASE
-- =========================================

SELECT * FROM customers;
SELECT * FROM orders;