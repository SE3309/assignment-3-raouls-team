import random
import datetime

# ----------------------------
# EX4 — DATA GENERATOR
# Generates thousands of valid INSERT statements
# ----------------------------

OUTPUT_FILE = "generated_data.sql"

NUM_USERS = 100
NUM_ACCOUNTS = 300
NUM_TRANSACTIONS = 1000
NUM_GOALS = 100
NUM_BUDGETS = 300
NUM_INVESTMENTS = 1000

ACCOUNT_TYPES = ["checking", "savings"]
TRANSACTION_TYPES = ["deposit", "withdrawal", "transfer", "payment"]
RISK_LEVELS = ["low", "medium", "high"]
CATEGORIES = ["Food", "Rent", "Car", "Entertainment", "Health", "Travel"]


def random_date(start, end):
    """Generate a random date between two datetime.date objects."""
    delta = end - start
    random_days = random.randrange(delta.days)
    return start + datetime.timedelta(days=random_days)


def main():

    start_date = datetime.date(2023, 1, 1)
    end_date = datetime.date(2025, 1, 1)

    f = open(OUTPUT_FILE, "w")

    # ------------------------------------
    # USERS
    # ------------------------------------
    f.write("-- INSERT USERS\n")
    for user_id in range(1, NUM_USERS + 1):
        first = f"User{user_id}"
        last = f"Last{user_id}"
        email = f"user{user_id}@example.com"
        pwd = f"hash{1000 + user_id}"
        created = random_date(start_date, end_date)

        f.write(
            f"INSERT INTO User (firstName, lastName, email, passwordHash, createdAt) "
            f"VALUES ('{first}', '{last}', '{email}', '{pwd}', '{created}');\n"
        )

    # ------------------------------------
    # ACCOUNTS
    # ------------------------------------
    f.write("\n-- INSERT ACCOUNTS\n")
    for acc_id in range(1, NUM_ACCOUNTS + 1):
        user_id = random.randint(1, NUM_USERS)
        acc_type = random.choice(ACCOUNT_TYPES)
        balance = round(random.uniform(0, 10000), 2)
        created = random_date(start_date, end_date)

        f.write(
            f"INSERT INTO Account (userID, accountType, balance, createdAt) "
            f"VALUES ({user_id}, '{acc_type}', {balance}, '{created}');\n"
        )

    # ------------------------------------
    # TRANSACTIONS
    # ------------------------------------
    f.write("\n-- INSERT TRANSACTIONS\n")
    for t_id in range(1, NUM_TRANSACTIONS + 1):
        account_id = random.randint(1, NUM_ACCOUNTS)
        amount = round(random.uniform(5, 2000), 2)
        ttype = random.choice(TRANSACTION_TYPES)
        tdate = random_date(start_date, end_date)

        f.write(
            f"INSERT INTO `Transaction` (accountID, amount, tType, tDate) "
            f"VALUES ({account_id}, {amount}, '{ttype}', '{tdate}');\n"
        )

    # ------------------------------------
    # GOALS
    # ------------------------------------
    f.write("\n-- INSERT GOALS\n")
    for goal_id in range(1, NUM_GOALS + 1):
        user_id = random.randint(1, NUM_USERS)
        goal_name = f"Goal{goal_id}"
        target = round(random.uniform(100, 10000), 2)
        deadline = random_date(start_date, end_date)

        f.write(
            f"INSERT INTO Goal (userID, goalName, targetAmount, deadline) "
            f"VALUES ({user_id}, '{goal_name}', {target}, '{deadline}');\n"
        )

    # ------------------------------------
    # BUDGETS
    # ------------------------------------
    f.write("\n-- INSERT BUDGETS\n")
    for b_id in range(1, NUM_BUDGETS + 1):
        user_id = random.randint(1, NUM_USERS)
        category = random.choice(CATEGORIES)
        limit_amount = round(random.uniform(50, 2000), 2)

        f.write(
            f"INSERT INTO Budget (userID, category, monthlyLimit) "
            f"VALUES ({user_id}, '{category}', {limit_amount});\n"
        )

    # ------------------------------------
    # INVESTMENTS
    # ------------------------------------
    f.write("\n-- INSERT INVESTMENTS\n")
    for inv_id in range(1, NUM_INVESTMENTS + 1):
        user_id = random.randint(1, NUM_USERS)
        itype = random.choice(["Index Fund", "ETF", "Crypto", "Stock"])
        value = round(random.uniform(100, 20000), 2)
        risk = random.choice(RISK_LEVELS)

        f.write(
            f"INSERT INTO Investment (userID, investmentType, value, riskLevel) "
            f"VALUES ({user_id}, '{itype}', {value}, '{risk}');\n"
        )

    f.close()
    print(f"Finished! SQL written to {OUTPUT_FILE}")


if __name__ == "__main__":
    main()
