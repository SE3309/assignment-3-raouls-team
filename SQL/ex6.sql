-- 1. Insert new savings accounts for users who joined in 2025 and have none
INSERT INTO Account (userID, accountType, balance, createdAt)
SELECT u.userID, 'savings', 0.00, CURDATE()
FROM User u
WHERE u.createdAt >= '2025-01-01'
  AND u.userID NOT IN (
        SELECT userID
        FROM Account
        WHERE accountType = 'savings'
  );

-- 2. Update balances for users with high-value investments
UPDATE Account a
JOIN Investment i ON a.userID = i.userID
SET a.balance = a.balance + 50.00
WHERE i.value > 10000;

-- 3. Delete old goals with no related transactions
DELETE FROM Goal
WHERE deadline < '2024-01-01'
  AND goalID NOT IN (
        SELECT goalID
        FROM TransactionGoal
  );
