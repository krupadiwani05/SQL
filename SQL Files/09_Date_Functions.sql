-- =========================================
-- DATE FUNCTIONS
-- =========================================

-- Current Date
SELECT CURDATE();

-- Current Date and Time
SELECT NOW();

-- Current Year
SELECT YEAR(CURDATE());

-- Current Month
SELECT MONTH(CURDATE());

-- Current Day
SELECT DAY(CURDATE());

-- Add 10 Days
SELECT DATE_ADD('2026-07-30', INTERVAL 10 DAY);

-- Subtract 10 Days
SELECT DATE_SUB('2026-07-30', INTERVAL 10 DAY);

-- Date Difference
SELECT DATEDIFF('2026-07-30', '2026-07-10');

-- Day Name
SELECT DAYNAME('2026-07-30');

-- Month Name
SELECT MONTHNAME('2026-07-30');