-- Insert sample users
INSERT INTO User (firstName, lastName, email, passwordHash, createdAt)
VALUES 
('Raoul', 'Barz', 'raoul@example.com', 'hash123', '2025-01-15'),
('Alicia', 'Stone', 'alicia@example.com', 'hash456', '2025-01-20');

-- Insert accounts for the users
INSERT INTO Account (userID, accountType, balance, createdAt)
VALUES
(1, 'checking', 2500.00, '2025-01-15'),
(1, 'savings', 6000.00, '2025-01-15'),
(2, 'checking', 1200.00, '2025-01-20');

-- Insert transactions for accounts
INSERT INTO `Transaction` (accountID, amount, tType, tDate)
VALUES
(1, -75.50, 'payment', '2025-02-01'),
(1, 500.00, 'deposit', '2025-02-03'),
(2, -120.00, 'withdrawal', '2025-02-05');

-- Insert a financial goal
INSERT INTO Goal (userID, goalName, targetAmount, deadline)
VALUES
(1, 'New Laptop', 1800.00, '2025-07-30');

-- Link transactions to a goal (transaction-goal many-to-many)
INSERT INTO TransactionGoal (transactionID, goalID)
VALUES
(2, 1);   -- The $500 deposit contributes toward the laptop goal

-- Insert a user budget category
INSERT INTO Budget (userID, category, monthlyLimit)
VALUES
(1, 'Food & Groceries', 450.00);

-- Insert an investment
INSERT INTO Investment (userID, investmentType, value, riskLevel)
VALUES
(2, 'Index Fund', 3200.00, 'medium');
