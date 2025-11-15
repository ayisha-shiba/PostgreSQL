1. Indexing (Theory + Examples)

Indexing is a technique used to speed up data retrieval in a database.
It works like an index in a book — instead of scanning all pages, the DB quickly jumps to the exact location.

Why Indexing Is Used

Faster SELECT queries

Efficient searching, sorting, filtering

Improves performance on large tables

How Index Works

DB creates a separate data structure (usually B-Tree)

Stores ordered key values + pointers to actual table rows

Types of Indexes

Primary Index – Created automatically on PRIMARY KEY

Unique Index – Ensures unique values

Composite Index – Index on multiple columns

Non-clustered Index – Separate structure that points to actual data

Example 1: Creating an Index
CREATE INDEX idx_employee_name
ON employees (emp_name);


Searches for names will become faster.

Example 2: Composite Index
CREATE INDEX idx_emp_dept
ON employees (dept_id, emp_name);


Useful when you frequently query using both columns.

Example 3: Dropping an Index
DROP INDEX idx_employee_name;
