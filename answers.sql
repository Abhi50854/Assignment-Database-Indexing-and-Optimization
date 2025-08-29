-- Assignment: Database Indexing and Optimization
-- Author: [Your Name]
-- Purpose: SQL queries for index management, user creation, and access control

-- Question 1 🗑️: Drop an index named IdxPhone from the customers table
DROP INDEX IdxPhone ON customers;

-- Verification: Check remaining indexes on the customers table
SHOW INDEXES FROM customers;

-- Question 2 👤: Create a user named 'bob' with password 'S$cu3r3!', restricted to localhost
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- Verification: List all users to confirm creation
SELECT user, host FROM mysql.user WHERE user = 'bob';

-- Question 3 🔑: Grant INSERT privilege to user 'bob' on salesDB database
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- Verification: Check privileges for bob
SHOW GRANTS FOR 'bob'@'localhost';

-- Question 4 🔐: Change the password for user 'bob' to 'P$55!23'
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';

-- Verification: Try connecting as bob (done in MySQL client, not here) or re-run SHOW GRANTS
SHOW GRANTS FOR 'bob'@'localhost';
