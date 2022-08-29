-- use hr_db;


---------------------------------------------------- Assignment 5-------------------------------------------

-- To solve below queries use "hr" database


-- Display first name and last name after converting the first letter of each name to upper case and
-- the rest to lower case.

-- SELECT ((UPPER((SUBSTRING(FIRST_NAME,1,1)))+SUBSTRING(first_name,2,LEN(first_name)-1))) as FIRST_NAME,((UPPER((SUBSTRING(LAST_NAME,1,1)))+SUBSTRING(LAST_NAME,2,LEN(last_name)-1))) as LAST_NAME from employees;



-- Display the first word in job title.

-- SELECT SUBSTRING (JOB_TITLE,1,(CHARINDEX(' ',JOB_TITLE + ' ')-1)) AS JOB_TITLE_FIRST_WORD   FROM JOBS;


-- Display the length of first name for employees where last name contain character ‘b’ after 3rd
-- position.

-- SELECT LEN(FIRST_NAME) FROM EMPLOYEES  WHERE LAST_NAME LIKE '%___B%';


-- Display first name in upper case and email address in lower case for employees where the first
-- name and email address are same irrespective of the case.


-- SELECT UPPER(FIRST_NAME), LOWER(EMAIL) FROM EMPLOYEES WHERE UPPER(FIRST_NAME)= UPPER(EMAIL)


-- Display first name, salary, and round the salary to thousands.

--SELECT FIRST_NAME, SALARY, ROUND(SALARY, -3) FROM EMPLOYEES



-- Display employee ID and the date on which he ended his previous job.

-- SELECT EMPLOYEE_ID,END_DATE FROM JOB_HISTORY;



-- Display first name and date of first salary of the employees.

-- SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES;
-- SELECT FIRST_NAME, HIRE_DATE (HIRE_DATE)+1 FROM EMPLOYEES

-- Display first name and experience of the employees.



-- Display first name of employees who joined in 2001.


-- SELECT FIRST_NAME, HIRE_DATE
--  FROM employees
--  WHERE YEAR(HIRE_DATE)=2001;

-- Display employees who joined in the current year.

-- SELECT * FROM EMPLOYEES WHERE YEAR(HIRE_DATE)= YEAR(SYSDATETIME())


-- Display the number of days between system date and 1st January 2011.

-- SELECT DATEDIFF(DAY, '20110101', GETDATE());


-- Display number of employees joined after 15th of the month.

-- SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE DAY (HIRE_DATE) > 15


-- Display third highest salary of employees.

-- SELECT TOP (1) * FROM
--    (SELECT TOP (3) salary FROM employees ORDER BY salary DESC) T
-- ORDER BY salary ASC

