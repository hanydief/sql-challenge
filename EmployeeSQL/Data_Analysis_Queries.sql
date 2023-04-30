-- 1 List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT 
		e.emp_no AS "Employee Number",
		e.last_name AS "Last Name", 
		e.first_name AS "First Name", 
		e.sex AS "Sex", 
		s.salary AS "Salary"
FROM 
	employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;

-- 2 List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT	
		first_name AS "First Name", 
		last_name AS "Last Name", 
		hire_date AS "Hire Date"
FROM 
	employees e
	WHERE e.hire_date >= '01/01/1986' 
	AND e.hire_date <= '12/31/1986'
ORDER BY e.hire_date;

-- 3 List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT 
		d.dept_no AS "Department Number",
		d.dept_name AS "Department Name",
		dm.emp_no AS "Employee Number",
		e.last_name AS "Last Name", 
		e.first_name AS "First Name"
FROM 
	departments d
JOIN dep_manager dm
ON d.dept_no = dm.dept_no
	JOIN employees e
	ON e.emp_no = dm.emp_no;

-- 4 List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT 
		d.dept_no AS "Department Number",
		de.emp_no AS "Employee Number",
		e.last_name AS "Last Name", 
		e.first_name AS "First Name",
		d.dept_name AS "Department Name"
FROM 
	departments d
JOIN dep_emp de
ON d.dept_no = de.dept_no
	JOIN employees e
	ON e.emp_no = de.emp_no
	ORDER BY d.dept_no;
	
-- 5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
SELECT
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.sex
FROM
	employees e
WHERE
	e.first_name = 'Hercules'
	AND
	e.last_name LIKE 'B%'
	ORDER BY e.last_name;
	

-- 6A List each employee in the Sales department, including their employee number, last name, and first name (2 points)
-- can use AND inside the JOIN instead of WHERE at the end just alternatve solution
SELECT 
		d.dept_name AS "Department Name",
		de.emp_no AS "Department Number",
		e.last_name AS "Last Name", 
		e.first_name AS "First Name"
FROM 
	departments d
JOIN dep_emp de
ON d.dept_no = de.dept_no
-- AND d.dept_name = 'Sales'
	JOIN employees e
	ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Sales'
	ORDER BY d.dept_no;

-- 6B "extra for myself not needed for Assignemnt" List each employee in the DEVELOPMENT department, including their employee number, last name, and first name
SELECT 
		d.dept_name AS "Department Name",
		de.emp_no AS "Employee Number",
		e.last_name AS "Last Name", 
		e.first_name AS "First Name"
FROM 
	departments d
JOIN dep_emp de
ON d.dept_no = de.dept_no
AND d.dept_name = 'Development'
	JOIN employees e
	ON e.emp_no = de.emp_no
	ORDER BY d.dept_no;	

-- 7- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
-- can use AND( Or ) inside the JOIN instead of WHERE OR at the end just alternatve solution
SELECT 
		de.emp_no AS "Employee Number",
		e.last_name AS "Last Name", 
		e.first_name AS "First Name",
		d.dept_name AS "Department Name"
FROM 
	departments d
JOIN dep_emp de
ON d.dept_no = de.dept_no
-- AND 
-- 	(
-- 		d.dept_name = 'Sales'
-- 	OR 
-- 		d.dept_name = 'Development'
-- 	)
	JOIN employees e
	ON e.emp_no = de.emp_no
WHERE
		d.dept_name = 'Sales'
	OR 
		d.dept_name = 'Development'
	ORDER BY d.dept_no;

-- 8- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)	
SELECT 
	e.last_name AS "Last Name", 
	COUNT(e.last_name) AS "Frequency "
FROM 
	employees e
	GROUP BY e.last_name
	ORDER BY COUNT(e.last_name) DESC;