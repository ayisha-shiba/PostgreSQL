Relationships (Theory + Examples)

Relationships define how data in one table is connected to data in another.

Types of Relationships
1. One-to-One (1:1) Relationship

Each row in Table A is linked to exactly one row in Table B.

Example:

CREATE TABLE person (
    person_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE passport (
    passport_id INT PRIMARY KEY,
    person_id INT UNIQUE,
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);


One person → one passport.

2. One-to-Many (1:N) Relationship

One row in Table A can be related to many rows in Table B.

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


One department → many employees.

3. Many-to-Many (M:N) Relationship

Rows in Table A can map to multiple rows in Table B and vice-versa.

Requires a junction table.

Example:

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- Junction table
CREATE TABLE student_course (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);


One student → many courses
One course → many students