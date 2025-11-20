-- 1. Simple SELECT query
SELECT firstName, lastName, email
FROM User
WHERE createdAt > '2025-01-01';

-- 2. Join between User and Account
SELECT u.firstName, u.lastName, a.accountType, a.balance
FROM User u
JOIN Account a ON u.userID = a.userID
WHERE a.balance > 5000;

-- 3. Aggregation with GROUP BY and HAVING
SELECT accountID, COUNT(*) AS numTransactions, SUM(amount) AS totalAmount
FROM `Transaction`
GROUP BY accountID
HAVING COUNT(*) > 10;

-- 4. Subquery inside WHERE clause
SELECT firstName, lastName
FROM User
WHERE userID IN (
    SELECT userID
    FROM Investment
    WHERE value > 10000
);

-- 5. EXISTS clause checking related goals
SELECT u.firstName, u.lastName
FROM User u
WHERE EXISTS (
    SELECT 1
    FROM Goal g
    WHERE g.userID = u.userID
      AND g.deadline BETWEEN '2025-01-01' AND '2025-12-31'
);

-- 6. Multi-table join across goal, join table, and transaction
SELECT g.goalName, t.amount, t.tDate
FROM Goal g
JOIN TransactionGoal tg ON g.goalID = tg.goalID
JOIN `Transaction` t ON tg.transactionID = t.transactionID
WHERE t.amount > 500;

-- 7. Pattern matching with LIKE, join across three tables, and sorting
SELECT u.email, t.amount, t.tType, t.tDate
FROM User u
JOIN Account a ON u.userID = a.userID
JOIN `Transaction` t ON a.accountID = t.accountID
WHERE u.email LIKE '%gmail.com'
ORDER BY t.amount DESC
LIMIT 20;