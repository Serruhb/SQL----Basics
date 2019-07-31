-- create tabel to import csv file 

sql=# CREATE TABLE employees(
sql(# emp_no INT PRIMARY KEY NOT NULL,
sql(# birth_date DATE NOT NULL,
sql(# first_name VARCHAR NOT NULL,
sql(# last_name VARCHAR NOT NULL,
sql(# gender VARCHAR NOT NULL,
sql(# hire_date DATE);
CREATE TABLE

sql=# CREATE TABLE salaries(
sql(# emp_no INT,
sql(# salary INT,
sql(# from_date DATE,
sql(# to_date DATE,
sql(# FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
sql(# );


sql=# CREATE TABLE titles(
sql(# emp_no INT NOT NULL,
sql(# title VARCHAR,
sql(# from_date DATE,
sql(# to_date DATE,
sql(# FOREIGN KEY (emp_no)
sql(# REFERENCES employees(emp_no)
sql(# );

sql=# CREATE TABLE departments(
sql(# dept_no VARCHAR NOT NULL PRIMARY KEY,
sql(# dept_name VARCHAR);

sql=# CREATE TABLE dept_emp(
sql(# emp_no INT NOT NULL,
sql(# dept_no VARCHAR NOT NULL,
sql(# from_date DATE,
sql(# to_date DATE,
sql(# FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
sql(# FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
sql(# );

sql=# CREATE TABLE dept_manager(
sql(# dept_no VARCHAR NOT NULL,
sql(# emp_no INT NOT NULL,
sql(# from_date DATE,
sql(# to_date DATE,
sql(# FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
sql(# FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
sql(# );

--importing csv files to populate sql tables

sql=# COPY employees FROM 'C:\tmp\employees.csv' WITH CSV HEADER;
 
sql=# COPY salaries FROM 'C:\tmp\salaries.csv' WITH CSV HEADER; 

sql=# COPY titles FROM 'C:\tmp\titles.csv' WITH CSV HEADER; 

sql=# COPY departments FROM 'C:\tmp\departments.csv' WITH CSV HEADER;

sql=# COPY dept_emp FROM 'C:\tmp\dept_emp.csv' WITH CSV HEADER;

sql=# COPY dept_manager FROM 'C:\tmp\dept_manager.csv' WITH CSV HEADER;



