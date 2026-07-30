CREATE TABLE IF NOT EXISTS employees (

    id SERIAL PRIMARY KEY,

    name VARCHAR(100) NOT NULL,

    department VARCHAR(100),

    email VARCHAR(100),

    salary INTEGER

);

INSERT INTO employees (name, department, email, salary)
VALUES
('Rajesh Kumar','Engineering','rajesh@example.com',75000),
('Shubam Singla','HR','shubam@example.com',60000),
('David Joseph','Finance','david@example.com',85000);
