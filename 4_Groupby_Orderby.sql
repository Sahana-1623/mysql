-- Group By
-- it groups together rows that have the same values in the specified column or columns.
-- GROUP BY is going to allow us to group rows that have the same data and run aggregate functions on them

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender;

-- below is wrong when you use group by  you have to have the same columns you're grouping on in the group by statement 
SELECT first_name
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

-- now the most useful reason we use group by is so we can perform out aggregate functions on them
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender, MIN(age), MAX(age), COUNT(age),AVG(age)
FROM employee_demographics
GROUP BY gender;

#The ORDER BY
#The ORDER BY keyword is used to sort the result-set in ascending or descending order.
#The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY gender DESC, age DESC;

#we don't actually have to spell out the column names. We can actually just use their column position
#best practice is to use the column names as it's more overt and if columns are added or replaced or something in this table it will still use the right columns to order on.

SELECT *
FROM employee_demographics
ORDER BY 5 DESC, 4 DESC;

