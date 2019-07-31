# SQL - Basics 

I decided to do all my database construction, organization and queries in SQL SHELL to further my understanding and 
comfort with SQL language and syntax.


##Requested Queries

--List the following details of each employee: employee number, last name, 
--first name, gender, and salary.

```SELECT e.emp_no, e.last_name,e.first_name,e.gender,s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;
```

![q1](https://user-images.githubusercontent.com/50157566/62245071-56941880-b3a6-11e9-8a76-ae374733d0d6.png)


--List employees who were hired in 1986.

```SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees e
WHERE EXTRACT(YEAR FROM hire_date) = 1986;
```
![q2](https://user-images.githubusercontent.com/50157566/62245072-56941880-b3a6-11e9-85c9-69dd53e86cad.png)

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.

```SELECT d.dept_no, d.dept_name,dm.emp_no,e.last_name,e.first_name,dm.from_date, dm.to_date
FROM departments d
RIGHT JOIN dept_manager dm
ON d.dept_no = dm.dept_no
INNER JOIN employees e
ON dm.emp_no = e.emp_no;
```
![q3](https://user-images.githubusercontent.com/50157566/62245073-56941880-b3a6-11e9-8b5f-c8932d968b28.png)

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

```SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no;
```
![q4](https://user-images.githubusercontent.com/50157566/62245074-56941880-b3a6-11e9-83cf-838dd7604395.png)

--List all employees whose first name is "Hercules" and last names begin with "B."

```SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
WHERE e.first_name = 'Hercules' AND last_name LIKE 'B%';
```
![q5](https://user-images.githubusercontent.com/50157566/62245067-56941880-b3a6-11e9-9040-5b54cf157adc.png)

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

```SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';
```
![q6](https://user-images.githubusercontent.com/50157566/62245068-56941880-b3a6-11e9-9c11-c330f4e2c693.png)

--List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

```SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
```
![q7](https://user-images.githubusercontent.com/50157566/62245069-56941880-b3a6-11e9-9318-cdbb76986172.png)

--In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.

```SELECT e.last_name, COUNT (e.emp_no)
FROM employees e
GROUP BY e.last_name
ORDER BY COUNT(e.emp_no) DESC;
```
![q8](https://user-images.githubusercontent.com/50157566/62245070-56941880-b3a6-11e9-8b81-a7cdc287ee6f.png)

