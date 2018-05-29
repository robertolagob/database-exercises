USE employees;

# shows each department along with the name of the current manager for that department.
SELECT dept_name AS 'Department Name' ,concat_ws(' ',first_name,last_name) AS 'Department Manager'
FROM employees
  JOIN dept_manager ON dept_manager.emp_no=employees.emp_no
  JOIN  departments ON dept_manager.dept_no=departments.dept_no
WHERE dept_manager.to_date>=CURDATE()
ORDER BY dept_name;




# Find the name of all departments currently managed by women.
SELECT dept_name AS 'Department Name' ,concat_ws(' ',first_name,last_name) AS 'Department Manager'
FROM employees
  JOIN dept_manager ON dept_manager.emp_no=employees.emp_no
  JOIN  departments ON dept_manager.dept_no=departments.dept_no
WHERE dept_manager.to_date>=CURDATE() AND employees.employees.gender='F'
ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT title,count(title) AS Count
FROM titles
  JOIN dept_emp ON dept_emp.emp_no=titles.emp_no
  JOIN departments ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name='Customer Service'
GROUP BY title;

# Find the current salary of all current managers.
SELECT dept_name AS 'Department Name',concat_ws(' ',first_name,last_name) AS Name,salaries.salary AS Salary
FROM employees
  JOIN dept_manager ON dept_manager.emp_no=employees.emp_no
  JOIN  departments ON dept_manager.dept_no=departments.dept_no
  JOIN  salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date>=CURDATE() AND salaries.to_date>=CURDATE()
ORDER BY dept_name;
;


# Find the names of all current employees, their department name, and their current manager's name.

SELECT concat_ws(' ',first_name,last_name) AS 'Employee Name',dept_name AS 'Department Name'
FROM employees
  JOIN dept_emp  ON employees.emp_no = dept_emp.emp_no
  JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.to_date>=CURDATE()  ;