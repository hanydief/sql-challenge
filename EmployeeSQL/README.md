# sql-challenge
EmployeeSQL-Challenge

## Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

## Data Analysis
1- List the employee number, last name, first name, sex, and salary of each employee.

2- List the first name, last name, and hire date for the employees who were hired in 1986.

3- List the manager of each department along with their department number, department name, employee number, last name, and first name.

4- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6- List each employee in the Sales department, including their employee number, last name, and first name.

7- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).



## Requirements
### Data Modeling (10 points)


### Entity Relationship Diagram is included or table schemas provided for all tables (10 points)
![Employees_ERD on QuickDBD.png](Output%20Screencapture/QuickDBD-export%20(1).png)
![Employees ERD on PGAdmin.png](Output%20Screencapture/Employees_ERD.png)

### Data Engineering (70 points)

All required columns are defined for each table (10 points)
Columns are set to the correct data type (10 points)
Primary Keys set for each table (10 points)
Correctly references related tables (10 points)
Tables are correctly related using Foreign Keys (10 points)
Correctly uses NOT NULL condition on necessary columns (10 points)
Accurately defines value length for columns (10 points)
![](Output%20Screencapture/Delete%20Existing%20tables%20if%20any%20%26%20Creating%20new%206%20tables%20SQLQuery.png)
![](Output%20Screencapture/Import%20CSVs%20%26%20view%20tables%20-%20SQLQuery.png)

![](Output%20Screencapture/Department%20View%20on%20SQLQuery.png)
![](Output%20Screencapture/Dept%20Employee%20View%20on%20SQLQuery.png)
![](Output%20Screencapture/Dept%20Manager%20View%20on%20SQLQuery.png)
![](Output%20Screencapture/Employees%20View%20on%20SQLQuery.png)
![](Output%20Screencapture/Salary%20View%20on%20SQLQuery.png)
![](Output%20Screencapture/Title%20View%20on%20SQLQuery.png)

## Data Analysis (20 points)
1- List the employee number, last name, first name, sex, and salary of each employee (2 points)

![Q1 Query](Output%20Screencapture/Q1%20Query.png)

2- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)

![Q2 Query.png](Output%20Screencapture/Q2%20Query.png)

3- List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)

![Q3 Query.png](Output%20Screencapture/Q3%20Query.png)

4- List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)

![Q4 Query.png](Output%20Screencapture/Q4%20Query.png)

5- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)

![Q5 Query.png](Output%20Screencapture/Q5%20Query.png)

6- List each employee in the Sales department, including their employee number, last name, and first name (2 points)

![Q6 Query.png](Output%20Screencapture/Q6%20Query.png)

7- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)

![Q7 Query.png](Output%20Screencapture/Q7%20Query.png)

8- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)

![Q8 Query.png](Output%20Screencapture/Q8%20Query.png)

