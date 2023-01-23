use employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena','Vidya', 'Maya')
ORDER BY last_name ASC, first_name ASC;

SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE (first_name = 'Irena'OR first_name = 'Vidya'OR first_name = 'Maya')
  AND (gender = 'M');


SELECT concat(first_name, ' ',last_name)
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no DESC;

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

SELECT *
FROM employees
WHERE (month(birth_date) = 12
    AND day(birth_date) = 25);

SELECT *
FROM employees
WHERE (month(birth_date) = 12
  AND day(birth_date) = 25)
AND year(hire_date) between 1990 and 2000
ORDER BY hire_date desc;

SELECT emp_no, first_name, last_name, datediff(now(), hire_date)
FROM employees
WHERE (month(birth_date) = 12
    AND day(birth_date) = 25)
  AND year(hire_date) between 1990 and 2000;