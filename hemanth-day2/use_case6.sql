-- usecase 6--
 CREATE TABLE BankAccount(account_id INT AUTO_INCREMENT , 
 account_number CHAR(12) NOT NULL,
 account_holder_name VARCHAR(120) NOT NULL,
 account_type VARCHAR(20)NOT NULL,
 balance DECIMAL(15,2) NOT NULL DEFAULT 0.00,
 currency_code CHAR(3) NOT NULL DEFAULT'INR',
 branch_name VARCHAR(100) NOT NULL,
 opened_date DATE NOT NULL,
 interest_rate DECIMAL(5,2) DEFAULT 0.00,
 overdraft_limit DECIMAL(12,2) DEFAULT 0.00,
 acount_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT `pk_account_id` PRIMARY KEY(account_id),
 CONSTRAINT `uk_account_number` UNIQUE (account_number),
 CONSTRAINT `chk_interest_rate` CHECK (interest_rate BETWEEN 0.00 AND 100.00),
 CONSTRAINT `chk_balance_non_negative` CHECK(balance >=0),
 CONSTRAINT `chk_ovberdraft_non_negative` CHECK (overdraft_limit>=0)
);
SELECT*FROM BankAccount;
INSERT INTO BankAccount(account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate)
VALUES ('156785343923', 'Pavan', 'SAVINGS', 5000.50, 'Kukkatpally', '2026-09-25', 3.50);

INSERT INTO BankAccount (account_number, account_holder_name, account_type, balance, branch_name, opened_date, overdraft_limit)
VALUES ('156785343924', 'rishi', 'CURRENT', 1200.00, 'KPHB', '2026-03-25', 500.00);

INSERT INTO BankAccount(account_number, account_holder_name, account_type, balance,
 branch_name, opened_date, interest_rate)
VALUES ('156785343925', 'Mani', 'FIXED_DEPOSIT', 50000.00, 'co-living branch', '2026-06-10', 7.25);