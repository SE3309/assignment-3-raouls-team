-- Drop old tables
DROP TABLE IF EXISTS TransactionGoal;
DROP TABLE IF EXISTS `Transaction`;
DROP TABLE IF EXISTS Goal;
DROP TABLE IF EXISTS Investment;
DROP TABLE IF EXISTS Budget;
DROP TABLE IF EXISTS Account;
DROP TABLE IF EXISTS User;

-- User table
CREATE TABLE User (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    passwordHash VARCHAR(255) NOT NULL,
    createdAt DATE NOT NULL
);

DESCRIBE User;

-- Account table
CREATE TABLE Account (
    accountID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT NOT NULL,
    accountType ENUM('savings', 'checking') NOT NULL,
    balance DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    createdAt DATE NOT NULL,

    CONSTRAINT fk_account_user
        FOREIGN KEY (userID)
        REFERENCES User(userID)
        ON DELETE CASCADE
);

DESCRIBE Account;

-- Transaction table
CREATE TABLE `Transaction` (
    transactionID INT AUTO_INCREMENT PRIMARY KEY,
    accountID INT NOT NULL,
    amount DECIMAL(12,2) NOT NULL,
    tType ENUM('deposit', 'withdrawal', 'transfer', 'payment') NOT NULL,
    tDate DATE NOT NULL,

    CONSTRAINT fk_transaction_account
        FOREIGN KEY (accountID)
        REFERENCES Account(accountID)
        ON DELETE CASCADE
);

DESCRIBE `Transaction`;

-- Goal table
CREATE TABLE Goal (
    goalID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT NOT NULL,
    goalName VARCHAR(100) NOT NULL,
    targetAmount DECIMAL(12,2) NOT NULL,
    deadline DATE,

    CONSTRAINT fk_goal_user
        FOREIGN KEY (userID)
        REFERENCES User(userID)
        ON DELETE CASCADE
);

DESCRIBE Goal;

-- TransactionGoal join table
CREATE TABLE TransactionGoal (
    transactionID INT NOT NULL,
    goalID INT NOT NULL,

    PRIMARY KEY (transactionID, goalID),

    CONSTRAINT fk_tg_transaction
        FOREIGN KEY (transactionID)
        REFERENCES `Transaction`(transactionID)
        ON DELETE CASCADE,

    CONSTRAINT fk_tg_goal
        FOREIGN KEY (goalID)
        REFERENCES Goal(goalID)
        ON DELETE CASCADE
);

DESCRIBE TransactionGoal;

-- Budget table
CREATE TABLE Budget (
    budgetID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT NOT NULL,
    category VARCHAR(50),
    monthlyLimit DECIMAL(12,2),

    CONSTRAINT fk_budget_user
        FOREIGN KEY (userID)
        REFERENCES User(userID)
        ON DELETE CASCADE
);

DESCRIBE Budget;

-- Investment table
CREATE TABLE Investment (
    investmentID INT AUTO_INCREMENT PRIMARY KEY,
    userID INT NOT NULL,
    investmentType VARCHAR(50),
    value DECIMAL(12,2),
    riskLevel ENUM('low','medium','high'),

    CONSTRAINT fk_investment_user
        FOREIGN KEY (userID)
        REFERENCES User(userID)
        ON DELETE CASCADE
);

DESCRIBE Investment;
