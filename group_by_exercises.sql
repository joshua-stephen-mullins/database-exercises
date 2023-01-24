use employees;

    select distinct title
    from titles;

SELECT distinct CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY CONCAT(first_name, ' ', last_name);

SELECT distinct last_name, count(last_name)
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;

SELECT count(gender), gender
FROM employees
WHERE (first_name = 'Irena'OR first_name = 'Vidya'OR first_name = 'Maya')
GROUP BY gender;