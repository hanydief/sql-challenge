-- DELETE all tables if exists
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS dep_emp CASCADE;
DROP TABLE IF EXISTS dep_manager CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;

-- Creating new 6 tables
CREATE TABLE departments(
	dept_no VARCHAR(5) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(30) NOT NULL
);

CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dep_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL,
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dep_manager(
	dept_no VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY  NOT NULL,
	salary DEC NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- COPY CSV to import data

COPY departments
FROM 'D:\Hany\UC Berkeley\Assignments\Module09_SQL-challenge_100\sql-challenge\data\departments.csv'
DELIMITER ','
CSV HEADER

COPY titles
FROM 'D:\Hany\UC Berkeley\Assignments\Module09_SQL-challenge_100\sql-challenge\data\titles.csv'
DELIMITER ','
CSV HEADER

COPY employees
FROM 'D:\Hany\UC Berkeley\Assignments\Module09_SQL-challenge_100\sql-challenge\data\employees.csv'
DELIMITER ','
CSV HEADER

COPY dep_emp
FROM 'D:\Hany\UC Berkeley\Assignments\Module09_SQL-challenge_100\sql-challenge\data\dept_emp.csv'
DELIMITER ','
CSV HEADER

COPY dep_manager
FROM 'D:\Hany\UC Berkeley\Assignments\Module09_SQL-challenge_100\sql-challenge\data\dept_manager.csv'
DELIMITER ','
CSV HEADER

COPY salaries
FROM 'D:\Hany\UC Berkeley\Assignments\Module09_SQL-challenge_100\sql-challenge\data\salaries.csv'
DELIMITER ','
CSV HEADER

-- View tables
SELECT * FROM departments
SELECT * FROM titles
SELECT * FROM employees
SELECT * FROM dep_emp
SELECT * FROM dep_manager
SELECT * FROM salaries

