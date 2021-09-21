-- 1
SELECT e.employee_no, e.last_name, e.first_name, s.salary
FROM employees e
	JOIN salaries s
		ON s.employee_no = e.employee_no
ORDER BY employee_no;

-- 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01'
ORDER BY hire_date;

-- 3
SELECT dm.department_no, d.department_name, dm.employee_no,
		e.last_name, e.first_name
FROM dept_managers dm
	JOIN employees e
		ON dm.employee_no = e.employee_no
	JOIN departments d
		ON dm.department_no = d.department_no;

-- 4
SELECT e.employee_no, e.last_name, e.first_name, d.department_name
FROM employees e
	JOIN employee_dept ed
		ON e.employee_no = ed.employee_no
	JOIN departments d
		ON ed.department_no = d.department_no;
		
-- 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
-- 6
SELECT e.employee_no, e.last_name, e.first_name, d.department_name
FROM employee_dept ed
	JOIN employees e
		ON ed.employee_no = e.employee_no
	JOIN departments d
		ON ed.department_no = d.department_no
WHERE department_name = 'Sales';

-- 7
SELECT e.employee_no, e.last_name, e.first_name, d.department_name
FROM employee_dept ed
	JOIN employees e
		ON ed.employee_no = e.employee_no
	JOIN departments d
		ON ed.department_no = d.department_no
WHERE department_name = 'Sales' OR department_name = 'Development';
-- 8
SELECT last_name, COUNT(last_name) as "frequency"
FROM employees
GROUP BY last_name
ORDER BY "frequency" DESC;
