-- =========================================
-- INSERT DATA INTO CUSTOMERS TABLE
-- =========================================

INSERT INTO customers
(customer_id, customer_name, city, phone)
VALUES
(1, 'Siya', 'Mumbai', '2478532585'),
(2, 'Jiya', 'Nashik', '4872452465'),
(3, 'Diya', 'Pune', '7865132456'),
(4, 'Riya', 'Pune', '9874563215');

-- =========================================
-- INSERT DATA INTO ACCOUNTS TABLE
-- =========================================

INSERT INTO accounts
(account_no, customer_id, account_type, balance)
VALUES
(1245515, 1, 'Saving', 84566862),
(1245442, 2, 'Saving', 1545424),
(1548452, 3, 'Current', 4845454),
(1654645, 4, 'Current', 545845);

-- =========================================
-- INSERT DATA INTO TRANSACTION TABLE
-- =========================================

INSERT INTO transaction
(transaction_id,
 customer_id,
 transaction_type,
 transaction_date,
 aadhar_card)
VALUES
(4215, 1, 'UPI', '2202-07-20', '123456789654'),
(1524, 2, 'ATM', '2302-07-20', '123456781241'),
(4654, 3, 'Credit Card', '2006-05-24', '456789123456'),
(1546, 4, 'Card', '2026-05-20', '12345678956');