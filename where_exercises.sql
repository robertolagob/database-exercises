USE employees;

SELECT * FROM employees WHERE  gender='M' AND (first_name = 'Irena' OR first_name LIKE 'Vidya' OR first_name LIKE 'Maya') ;

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE hire_date  LIKE '199%';

SELECT * FROM employees WHERE birth_date  LIKE '%12-25';

SELECT * FROM employees WHERE last_name  LIKE '%q%';

SELECT * FROM employees WHERE  last_name  LIKE 'E%' OR last_name LIKE'%e';
SELECT * FROM employees WHERE  last_name  LIKE 'E%' AND last_name LIKE'%e';



SELECT * FROM employees WHERE hire_date  LIKE '199%' AND birth_date  LIKE '%12-25';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE'%qu%';