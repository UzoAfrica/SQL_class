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

-- QUESTION- Find the employees who's salary is more than the average salary earned by all employee

select avg(salry) from emplyee;

select *
from emplyee 
where salary > (selct avg(salary) from emplyee);

 -- Scalary Subquery
select *
from Employee e
join (select avg(salary) sal from employee ) avg_sal
on e.salary > avg_sal.sal


-- multiple row subquery
-- subquery which returns multiple column and multiple
-- subquery which returns only 1 column and multiple rows

 -- Question: Find the employee who earn the highest salary in each department.
 
 select dept_name, max(salary)
 from employee
 group by dept_name
 
 select * 
 from employee 
 where (dept_name, salary) in (select dept_name, max(salary)
							  from employee
							  group by dept_name);