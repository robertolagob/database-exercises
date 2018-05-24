USE employees;

SELECT DISTINCT title FROM titles ;

SELECT last_name,count(last_name) FROM employees WHERE last_name LIKE 'E%e'  GROUP BY last_name;


SELECT last_name,count(last_name) FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%' GROUP BY last_name;


SELECT gender,count(gender) FROM employees WHERE   (first_name = 'Irena' OR first_name LIKE 'Vidya' OR first_name LIKE 'Maya') GROUP BY gender ;
