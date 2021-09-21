CREATE TABLE departments 
(
	department_no VARCHAR PRIMARY KEY,
	department_name VARCHAR
);

CREATE TABLE titles
(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

CREATE TABLE employees
(
	employee_no INT PRIMARY KEY,
	title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (title_id) REFERENCES titles (title_id)
);

CREATE TABLE salaries
(
	employee_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (employee_no) REFERENCES employees (employee_no)
);

CREATE TABLE employee_dept
(
	employee_no INT,
	department_no VARCHAR,
	PRIMARY KEY (employee_no, department_no),
	FOREIGN KEY (employee_no) REFERENCES employees (employee_no),
	FOREIGN KEY (department_no) REFERENCES departments (department_no)
);

CREATE TABLE dept_managers
(
	department_no VARCHAR,
	employee_no INT,
	PRIMARY KEY (department_no, employee_no),
	FOREIGN KEY (department_no) REFERENCES departments (department_no),
	FOREIGN KEY (employee_no) REFERENCES employees (employee_no)
);


