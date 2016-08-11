/*
/*
 * Student: Eduardo Aguirre
 * Session 11
 * Assignment 1
 * 
Write a SQL statement to update the email column of employees table with
“diana@gmail.com” for id 3.
b) Write a SQL statement to update the commission_pct column of employees table
with 40 where salary is greater than 19,000 .
c) Write a SQL statement to update the first_name column of employees table with
Barac for the employees whose email is “barack111@gmail.com”.
d) Write a SQL statement to update the salary column of employees table with 25000
whose department_id is 1 and gets a commission_pct less than 30
*/

/*a)*/
/*Find Records*/
SELECT * FROM employees.employees
WHERE ID=3;

/*Update Records*/
UPDATE employees.employees
SET email='diana@gmail.com'
WHERE ID=3;

/*Revalidate Results*/
SELECT id, email 
FROM employees.employees
WHERE ID=3;

/*b)*/
/*Find Records*/
SELECT * 
FROM employees.employees
WHERE salary>19000;

/*Update Records*/
UPDATE employees.employees
SET commission_pct=40
WHERE salary>19000;

/*Revalidate Results*/
SELECT salary, commission_pct 
FROM employees.employees
WHERE salary>19000;

/*c)*/
/*Find Records*/
SELECT * 
FROM employees.employees
WHERE email='barack111@gmail.com';

/*Update Records*/
UPDATE employees.employees
SET first_name='Barac'
WHERE email='barack111@gmail.com';

/*Revalidate Results*/
SELECT email, first_name 
FROM employees.employees
WHERE email='barack111@gmail.com';


/*d)*/
/*Find Records*/
SELECT * 
FROM employees.employees
WHERE department_id=1
AND commission_pct<30;

/*Update Records*/
UPDATE employees.employees
SET salary=25000
WHERE department_id=1
AND commission_pct<30;

/*Revalidate Results*/
SELECT department_id, commission_pct, salary 
FROM employees.employees
WHERE department_id=1
AND commission_pct<30;
