use employees;

# SELECT emp_no, first_name, last_name
# FROM employees
# WHERE first_name IN ('Irena','Vidya', 'Maya');

SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE (first_name = 'Irena'OR first_name = 'Vidya'OR first_name = 'Maya')
AND (gender = 'M');


SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%'
OR last_name LIKE '%e';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%'AND last_name LIKE '%e';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';