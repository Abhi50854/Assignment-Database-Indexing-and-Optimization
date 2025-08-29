# Database Indexing and Optimization Assignment

This repository contains SQL scripts for database index management, user creation, and access control operations.

## 📋 Assignment Overview

The assignment demonstrates practical SQL operations for:
- Index management (dropping indexes)
- User account management (creation and modification)
- Database privilege management (granting and verifying permissions)

## 🗂️ Files

- `database_operations.sql` - Main SQL script containing all operations

## 🛠️ SQL Operations

### 1. Index Management
```sql
-- Drop an index named IdxPhone from the customers table
DROP INDEX IdxPhone ON customers;

-- Verify remaining indexes on the customers table
SHOW INDEXES FROM customers;
```

### 2. User Account Management
```sql
-- Create a user named 'bob' with password 'S$cu3r3!', restricted to localhost
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- Change password for user 'bob' to 'P$55!23'
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
```

### 3. Privilege Management
```sql
-- Grant INSERT privilege to user 'bob' on salesDB database
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- Verify privileges for user 'bob'
SHOW GRANTS FOR 'bob'@'localhost';
```

## 🔍 Verification Commands

The script includes verification steps for each operation:
- `SHOW INDEXES FROM customers` - Verifies index removal
- `SELECT user, host FROM mysql.user WHERE user = 'bob'` - Confirms user creation
- `SHOW GRANTS FOR 'bob'@'localhost'` - Checks user privileges

## 🚀 Usage

1. Ensure you have MySQL installed and running
2. Connect to your MySQL server with appropriate privileges
3. Execute the SQL script or run commands individually
4. Observe the verification results for each operation

## 📝 Notes

- The operations assume the existence of a `customers` table and `salesDB` database
- User creation and privilege operations require appropriate administrative privileges
- Password changes take effect immediately without requiring a server restart

## 🔒 Security Considerations

- Passwords in the script are examples; use strong, unique passwords in production
- The user 'bob' is restricted to localhost connections for security
- Only necessary privileges (INSERT) are granted following the principle of least privilege

---

*This assignment demonstrates fundamental database administration tasks for index optimization and access control.*
