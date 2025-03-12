SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name
FROM employee_demographics;

SELECT first_name, last_name
FROM employee_demographics;

SELECT last_name, first_name, gender, age
FROM employee_demographics;

SELECT last_name, 
first_name, 
gender, 
age
FROM employee_demographics;

SELECT last_name, 
first_name, 
gender, 
age,
age + 10
FROM employee_demographics;

# Pemdas

SELECT last_name, 
first_name, 
gender, 
age,
( age + 10 ) * 10 + 10
FROM employee_demographics;

SELECT dept_id
FROM employee_salary;

SELECT DISTINCT dept_id
FROM employee_salary;

SELECT DISTINCT dept_id, salary
FROM employee_salary;
