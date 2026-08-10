-- =========================================
-- ALTER TABLE OPERATIONS
-- =========================================

-- View table structure
DESC accounts;
DESC transaction;

-- =========================================
-- MODIFY COLUMN
-- =========================================

ALTER TABLE accounts
MODIFY account_type VARCHAR(100);

-- =========================================
-- ADD NEW COLUMN
-- =========================================

ALTER TABLE transaction
ADD amount INT;

-- =========================================
-- RENAME EXISTING COLUMN
-- =========================================

ALTER TABLE transaction
RENAME COLUMN transaction_type TO trans_type;

-- =========================================
-- CHANGE COLUMN NAME AND DATATYPE
-- =========================================

ALTER TABLE accounts
CHANGE account_type acc_type VARCHAR(150);

-- =========================================
-- ADD CHECK CONSTRAINT
-- =========================================

ALTER TABLE transaction
ADD CONSTRAINT CHECK (amount > 0);

-- =========================================
-- DROP COLUMN
-- =========================================

ALTER TABLE transaction
DROP COLUMN amount;

-- =========================================
-- ALTER TABLE ON BANK_DATASET
-- =========================================

ALTER TABLE bank_dataset
DROP COLUMN IsActiveMember;

ALTER TABLE bank_dataset
DROP COLUMN Exited;

-- =========================================
-- ALTER TABLE ON TRANSACTIONS TABLE
-- =========================================

ALTER TABLE transactions
RENAME COLUMN trancation_id TO transaction_id;