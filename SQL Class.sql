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

CREATE TABLE department (
    emp_id INT PRIMARY KEY,
    dept_name VARCHAR(255),
    location VARCHAR(255)
);

-- Insert sample data for 10 employees
INSERT INTO department (emp_id, dept_name, location) VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'Chicago'),
(4, 'Marketing', 'Los Angeles'),
(5, 'Sales', 'Houston'),
(6, 'Engineering', 'Boston'),
(7, 'Support', 'Seattle'),
(8, 'Legal', 'Dallas'),
(9, 'Operations', 'Miami'),
(10, 'Research', 'Denver');

CREATE TABLE sales (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(255),
    product_name VARCHAR(255),
    quantity INT,
    price DECIMAL(10, 2)
);

-- Insert sample data for 6 phone stores
INSERT INTO sales (store_id, store_name, product_name, quantity, price) VALUES
(1, 'Store A', 'iPhone 13', 50, 999),
(2, 'Store A', 'Samsung Galaxy S21', 30, 799),
(3, 'Store B', 'Google Pixel 6', 40, 899),
(4, 'Store B', 'OnePlus 9 Pro', 20, 749),
(5, 'Store C', 'Sony Xperia 5', 25, 699),
(6, 'Store C', 'Xiaomi Mi 11', 35, 599),
(7, 'Store D', 'iPhone 13', 60, 999.99),
(8, 'Store D', 'Samsung Galaxy S21', 25, 799),
(9, 'Store E', 'Google Pixel 6', 45, 899),
(10, 'Store E', 'OnePlus 9 Pro', 15, 749),
(11, 'Store F', 'Sony Xperia 5', 30, 699),
(12, 'Store F', 'Xiaomi Mi 11', 40, 599);



SELECT * FROM Employee;
SELECT * FROM department;
SELECT * FROM sales;

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
							  
-- single column, multiple row subquery
-- Question:Find department who do not have any employees

select *
from department
where dept_name not in (select distinct dept_name from employee);

-- Correlated subquery
--  A subquery which is related to the outer query
 -- QUESTION: Find the employees in each department who earn more than the average salary in that department
 
 select avg(salary) from employee where dept_name = "specific_dept"
 
 select *
 from employee e1
 where salary > (select avg(salary)
				from employee e2
				where e2.dept_name = e1.dept_name
				);
				
				
	-- QUESTION: Find department who do not have any employees
	-- Correlated subquery
	select *
	from department d
	where not exists (select 1 from employee e where e.dept_name = d.dept_name);
	
	--Subquery inside a Subquery
	-- QUESTION : Find stores who's sales where better than the average sales accross all stores
	
	
	select store_name, sum(price) as total_sales
	from sales
	group by store_name
	
--	select
--	from ()
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
 