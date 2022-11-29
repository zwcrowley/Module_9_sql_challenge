-- Module 9 SQL Challenge
-- Queries: Data Analysis
-- Zack Crowley

-- 1. List the employee number, last name, first name, sex, and salary of each employee.
-- First select employee number, last name, first name, sex from employee table and join with salaries table to get salaries:
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s ON
  e.emp_no = s.emp_no
ORDER BY emp_no;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.emp_no, e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE
	hire_date  >= '1986-1-1'
	AND hire_date <= '1986-12-31';
	
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- First select department number and department name from department; employee number, last name, first name, employee table, select salary from salaries 
-- and join with salaries table to get salaries, order_by emp_no :
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager as dm
INNER JOIN departments as d ON
  d.dept_no = dm.dept_no
INNER JOIN employees as e ON
  e.emp_no = dm.emp_no
ORDER BY emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

