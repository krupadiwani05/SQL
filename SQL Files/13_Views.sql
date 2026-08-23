-- =========================================
-- VIEWS
-- =========================================

USE hdfc_bank;

SELECT * FROM transactions;

-- =========================================
-- CREATE VIEW
-- =========================================

CREATE VIEW credit_table AS
SELECT *
FROM transactions
WHERE transaction_type = 'Credit';

-- =========================================
-- DISPLAY VIEW DATA
-- =========================================

SELECT *
FROM credit_table;