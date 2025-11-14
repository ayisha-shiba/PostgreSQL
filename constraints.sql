Constraints (Theory + Examples)

Constraints are rules applied to columns to ensure the correctness, validity, and integrity of the data.

Types of Constraints
1. NOT NULL Constraint

Ensures a column cannot store NULL values.

Example:

CREATE TABLE students (
    id INT,
    name VARCHAR(50) NOT NULL
);


Here, name must always contain a value.

2. UNIQUE Constraint

Ensures all values in a column are distinct.

Example:

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);


Each email must be different for every user.

3. PRIMARY KEY Constraint

Uniquely identifies each row in a table.
Combination of NOT NULL + UNIQUE.

Example:

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50)
);

4. FOREIGN KEY Constraint

Links two tables, ensuring referential integrity.

Example:

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);


dept_id must exist in department table.

5. CHECK Constraint

Ensures a column’s value meets a specific condition.

Example:

CREATE TABLE items (
    item_id INT PRIMARY KEY,
    price INT CHECK (price > 0)
);


Price cannot be zero or negative.

6. DEFAULT Constraint

Assigns a default value if no value is provided.

Example:

CREATE TABLE accounts (
    acc_id INT PRIMARY KEY,
    status VARCHAR(20) DEFAULT 'active'
);
