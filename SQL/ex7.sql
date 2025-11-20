-- =========================================================
-- EX7: Two Views, Queries Using Views, and Updatability Test
-- =========================================================


-- =========================================================
-- View 1: HighValueInvestors (aggregates investment totals)
-- =========================================================
CREATE VIEW HighValueInvestors AS
SELECT u.userID, u.firstName, u.lastName, SUM(i.value) AS totalInvestment
FROM User u
JOIN Investment i ON u.userID = i.userID
GROUP BY u.userID, u.firstName, u.lastName;

-- Query using View 1
SELECT *
FROM HighValueInvestors
WHERE totalInvestment > 10000
LIMIT 5;

-- Attempt to modify View 1 (should fail because of GROUP BY)
INSERT INTO HighValueInvestors (userID, firstName, lastName, totalInvestment)
VALUES (99, 'Test', 'User', 50000);




-- View 2: RecentLargeTransactions (join of three tables)
CREATE VIEW RecentLargeTransactions AS
SELECT t.transactionID, t.amount, t.tDate,
       u.userID, u.firstName, u.lastName
FROM `Transaction` t
JOIN Account a ON t.accountID = a.accountID
JOIN User u ON a.userID = u.userID
WHERE t.amount > 500
  AND t.tDate >= '2025-01-01';

-- Query using View 2
SELECT firstName, lastName, amount, tDate
FROM RecentLargeTransactions
LIMIT 5;

-- Attempt to modify View 2 (should fail because it is a join view)
INSERT INTO RecentLargeTransactions (transactionID, amount, tDate, userID)
VALUES (9999, 700, '2025-03-01', 5);