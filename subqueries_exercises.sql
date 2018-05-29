
# Find all the titles held by all employees with the first name Aamod.
SELECT title, count(title) FROM titles
WHERE emp_no IN (
  SELECT emp_no FROM employees
  WHERE first_name='Aamod'
)
GROUP BY title;


# Find all the current department managers that are female.

SELECT first_name,last_name FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager
WHERE to_date>=CURDATE())   AND gender='F';


USE employees;


# Find all the department names that currently have female managers.
SELECT DISTINCT dept_name FROM departments
WHERE dept_no IN (
  SELECT dept_no FROM dept_manager
  WHERE  emp_no IN (
    SELECT emp_no FROM employees
    WHERE gender='F' AND to_date>=curdate()
  ));


# Find the first and last name of the employee with the highest salary


SELECT first_name,last_name FROM employees
WHERE emp_no=(SELECT emp_no FROM salaries
WHERE salary =(SELECT MAX(salary) FROM salaries));

SELECT MAX(salary) FROM salaries;
