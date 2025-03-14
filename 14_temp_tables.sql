-- Temporary Tables
-- Temporary tables are tables that are only visible to the session that created them. 
-- They can be used to store intermediate results for complex queries or to manipulate data before inserting it into a permanent table.

-- There's 2 ways to create temp tables:
-- 1. This is the less commonly used way - which is to build it exactly like a real table and insert data into it

CREATE TEMPORARY TABLE temp_table
(
first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(100)
);

SELECT * FROM temp_table;

-- if we refresh out tables it isn't there. It isn't an actual table. It's just a table in memory.

INSERT INTO temp_table VALUES('Sahana','Vijayan','Lucy');

SELECT * FROM temp_table;

-- the second way is much faster and preferred method
-- 2. Build it by inserting data into it - easier and faster

CREATE TEMPORARY TABLE salary_over_50k
SELECT * 
FROM employee_salary
WHERE salary > 50000;

SELECT * FROM salary_over_50k;