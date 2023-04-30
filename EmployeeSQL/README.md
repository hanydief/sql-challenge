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
QuickDBD-export (1).png
Employees_ERD.pgerd

### Data Engineering (70 points)

All required columns are defined for each table (10 points)
Columns are set to the correct data type (10 points)
Primary Keys set for each table (10 points)
Correctly references related tables (10 points)
Tables are correctly related using Foreign Keys (10 points)
Correctly uses NOT NULL condition on necessary columns (10 points)
Accurately defines value length for columns (10 points)

Delete Existing tables if any & Creating new 6 tables SQLQuery.png
Import CSVs & view tables - SQLQuery.png

## Data Analysis (20 points)
List the employee number, last name, first name, sex, and salary of each employee (2 points)
Q1 Query.png

List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
Q2 Query.png

List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
Q3 Query.png

List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
Q4 Query.png

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
Q5 Query.png

List each employee in the Sales department, including their employee number, last name, and first name (2 points)
Q6 Query.png

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
Q7 Query.png

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
Q8 Query.png