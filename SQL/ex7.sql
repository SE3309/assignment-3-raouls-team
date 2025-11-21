-- =========================================================
-- EX7: Two Views, Queries Using Views, and Updatability Test
-- =========================================================


-- =========================================================
-- View 1: HighValueInvestors 
-- Aggregates each user's total investment value
-- =========================================================
CREATE VIEW HighValueInvestors AS
SELECT u.userID, u.firstName, u.lastName, 
       SUM(i.value) AS totalInvestment
FROM User u
JOIN Investment i ON u.userID = i.userID
GROUP BY u.userID, u.firstName, u.lastName;

-- Query using View 1
-- Lists only users with large investment totals
SELECT *
FROM HighValueInvestors
WHERE totalInvestment > 10000
LIMIT 5;

-- Updatability Test for View 1 (expected to fail)
-- This view is not updatable because it contains GROUP BY
INSERT INTO HighValueInvestors (userID, firstName, lastName, totalInvestment)
VALUES (99, 'Test', 'User', 50000);



-- =========================================================
-- View 2: RecentLargeTransactions
-- Shows large recent transactions joined with user details
-- =========================================================
CREATE VIEW RecentLargeTransactions AS
SELECT t.transactionID, t.amount, t.tDate,
       u.userID, u.firstName, u.lastName
FROM `Transaction` t
JOIN Account a ON t.accountID = a.accountID
JOIN User u ON a.userID = u.userID
WHERE t.amount > 500
  AND t.tDate >= '2025-01-01';

-- Query using View 2
-- Displays high-value recent transactions
SELECT firstName, lastName, amount, tDate
FROM RecentLargeTransactions
LIMIT 5;

-- Updatability Test for View 2 (expected to fail)
-- This view is not updatable because it is a multi-table join view
INSERT INTO RecentLargeTransactions (transactionID, amount, tDate, userID)
VALUES (9999, 700, '2025-03-01', 5);
