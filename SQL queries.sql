SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM salaries AS s
INNER JOIN employee AS e ON s.emp_no = e.emp_no
ORDER BY emp_no
LIMIT 1000;

SELECT first_name, last_name, hire_date 
FROM employee
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'
ORDER BY hire_date ASC
;

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM department_manager dm
JOIN employee e
ON dm.emp_no = e.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
ORDER BY d.dept_name ASC;


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employee e
JOIN department_employee de 
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
ORDER BY d.dept_name ASC
LIMIT 80000;

SELECT first_name, last_name, sex
FROM employee 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name ASC;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employee e
JOIN department_employee de 
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employee e
JOIN department_employee de 
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY d.dept_name ASC;

SELECT last_name, count(emp_no) as num_employees_with_same_last_name
FROM employee
GROUP BY last_name
ORDER BY num_employees_with_same_last_name DESC;
