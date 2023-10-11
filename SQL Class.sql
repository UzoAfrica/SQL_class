-- Database: employee

-- DROP DATABASE IF EXISTS employee;
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(255),
    dept_name VARCHAR(255),
    salary DECIMAL(10, 2)
);

-- Insert sample data for 10 employees
INSERT INTO Employee (emp_id, emp_name, dept_name, salary) VALUES
(1, 'John Doe', 'HR', 50000.00),
(2, 'Jane Smith', 'IT', 60000.00),
(3, 'Bob Johnson', 'Sales', 55000.00),
(4, 'Alice Brown', 'Finance', 58000.00),
(5, 'David Lee', 'Marketing', 52000.00),
(6, 'Emily Davis', 'IT', 63000.00),
(7, 'Michael Wilson', 'HR', 51000.00),
(8, 'Sophia Kim', 'Finance', 59000.00),
(9, 'James Robinson', 'Sales', 56000.00),
(10, 'Olivia Anderson', 'Marketing', 52500.00);

SELECT * FROM Employee;
