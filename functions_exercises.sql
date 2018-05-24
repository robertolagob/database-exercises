UUSE employees;

SELECT * FROM employees WHERE  gender='M' AND (first_name = 'Irena' OR first_name LIKE 'Vidya' OR first_name LIKE 'Maya') ORDER BY last_name,first_name  ;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC ;

SELECT * FROM employees WHERE hire_date  LIKE '199%';

SELECT * FROM employees WHERE birth_date  LIKE '%12-25';

SELECT * FROM employees WHERE last_name  LIKE '%q%';

SELECT concat(first_name,' ',last_name) AS 'Fullname' FROM employees WHERE  first_name LIKE 'E%e';
SELECT * FROM employees WHERE  last_name  LIKE 'E%e';



SELECT concat(first_name,' ',last_name,' Days Working: ',datediff(CURDATE(),hire_date)) FROM employees WHERE hire_date  LIKE '199%' AND birth_date  LIKE '%12-25' ORDER BY birth_date ASC ;

SELECT * FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE'%qu%';