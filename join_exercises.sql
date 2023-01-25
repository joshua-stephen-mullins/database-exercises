-- # use join_test_db;
--
-- # CREATE TABLE roles (
-- #                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
-- #                        name VARCHAR(100) NOT NULL,
-- #                        PRIMARY KEY (id)
-- # );
-- #
-- # CREATE TABLE users (
-- #                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
-- #                        name VARCHAR(100) NOT NULL,
-- #                        email VARCHAR(100) NOT NULL,
-- #                        role_id INT UNSIGNED DEFAULT NULL,
-- #                        PRIMARY KEY (id),
-- #                        FOREIGN KEY (role_id) REFERENCES roles (id)
-- # );
-- #
-- # INSERT INTO roles (name) VALUES ('admin');
-- # INSERT INTO roles (name) VALUES ('author');
-- # INSERT INTO roles (name) VALUES ('reviewer');
-- # INSERT INTO roles (name) VALUES ('commenter');
-- #
-- # INSERT INTO users (name, email, role_id) VALUES
-- #                                              ('bob', 'bob@example.com', 1),
-- #                                              ('joe', 'joe@example.com', 2),
-- #                                              ('sally', 'sally@example.com', 3),
-- #                                              ('adam', 'adam@example.com', 3),
-- #                                              ('jane', 'jane@example.com', null),
-- #                                              ('mike', 'mike@example.com', null);
--
--
-- # SELECT users.name as user_name, roles.name as role_name
-- # FROM roles
-- #          LEFT JOIN users ON users.role_id = roles.id;
-- #
-- # SELECT users.name AS user_name, roles.name AS role_name
-- # FROM users
-- #         JOIN roles ON users.role_id = roles.id;

use employees;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' and e.gender = 'F';

SELECT distinct t.title as 'title', COUNT(t.title) AS 'Total'
FROM employees as e
         JOIN dept_emp as dep
              ON dep.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dep.dept_no
         JOIN titles as t
              ON t.emp_no = e.emp_no
WHERE (dep.to_date = '9999-01-01') and (d.dept_name = 'Customer Service') and (t.to_date = '9999-01-01')
GROUP BY t.title;


SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary as Salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries as s
              ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' and s.to_date = '9999-01-01' order by s.salary;


SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE  dept_no IN (
        SELECT dept_no
        FROM departments
        WHERE dept_name = 'Development'
        )
    )
AND MONTH(birth_date) = 12 AND DAY(birth_date) = 28;

