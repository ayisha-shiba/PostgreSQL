postgres=# DELETE FROM person_details WHERE gender NOT IN ('Male','Female');
DELETE 99
postgres=# ALTER TABLE person_details ADD CONSTRAINT gender_constraints CHECK (gender = 'Female' OR gender = 'Male');
ALTER TABLE
postgres=# UPDATE person_details SET email = 'juddz@gmail.com' WHERE id = 998;
UPDATE 1
postgres=# SELECT * FROM person_details where id = 998;
 id  | first_name | last_name |      email      | gender | country_of_birth
-----+------------+-----------+-----------------+--------+------------------
 998 | Judd       | Puddan    | juddz@gmail.com | Male   | Afghanistan
(1 row)


postgres=# \l
                                                            List of databases
   Name    |  Owner   | Encoding | Locale Provider |      Collate       |       Ctype        | Locale | ICU Rules |   Access privileges
-----------+----------+----------+-----------------+--------------------+--------------------+--------+-----------+-----------------------
 person    | shiba    | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           |
 postgres  | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           |
 studentdb | shiba    | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           |
 template0 | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | =c/postgres          +
           |          |          |                 |                    |                    |        |           | postgres=CTc/postgres
 template1 | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | =c/postgres          +
           |          |          |                 |                    |                    |        |           | postgres=CTc/postgres
 test      | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           |
(6 rows)

                                                    ^
postgres=# ALTER TABLE person_details
postgres-# ADD CONSTRAINT fk FOREIGN KEY (id) REFERENCES car(id);
ERROR:  insert or update on table "person_details" violates foreign key constraint "fk"
DETAIL:  Key (id)=(101) is not present in table "car".
postgres=#
postgres=# CREATE TABLE departments (
postgres(#     dept_id SERIAL PRIMARY KEY,
postgres(#     dept_name VARCHAR(50) NOT NULL
postgres(# );
CREATE TABLE
postgres=# INSERT INTO departments(dept_name) VALUES
postgres-# ('HR'),
postgres-# ('Finance'),
postgres-# ('IT'),
postgres-# ('Marketing');
INSERT 0 4
postgres=# CREATE TABLE employees (
postgres(#     emp_id SERIAL PRIMARY KEY,
postgres(#     first_name VARCHAR(50) NOT NULL,
postgres(#     last_name VARCHAR(50),
postgres(#     age INT,
postgres(#     dept_id INT,
postgres(#     salary NUMERIC(10,2),
postgres(#     FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
postgres(# );
CREATE TABLE
postgres=# INSERT INTO employees(first_name, last_name, age, dept_id, salary) VALUES
postgres-# ('Ayisha', 'Shiba', 20, 3, 50000),
postgres-# ('John', 'Doe', 28, 1, 45000),
postgres-# ('Jane', 'Smith', 32, 2, 60000),
postgres-# ('Mike', 'Brown', 25, 3, 55000);
INSERT 0 4
postgres=# select
Stored Procedure — SQL Theory

A Stored Procedure is a precompiled block of SQL statements stored inside the database. It performs a specific task like inserting, updating, or fetching data when executed.

1. Definition

A stored procedure is created once and can be executed many times using a simple call.
It is similar to a function in programming.

2. Syntax (General form)
CREATE PROCEDURE procedure_name
AS
BEGIN
    -- SQL statements
END;
