
USE SCHOOLDB;

--Simple SELECT:
--1) Write a query to select all columns from the Students table.

	SELECT * 
	FROM STUDENT;


--. SELECT with WHERE:
--2) Write a query to select students whose first name is 'John'.

SELECT * 
FROM STUDENT
WHERE FirstName = 'John';


--SELECT with ORDER BY:
--3) Write a query to select all students, ordering the results by LastName in ascending order.

SELECT *
FROM STUDENT
ORDER BY LASTNAME ASC;


--SELECT with GROUP BY:
--4) Write a query to count the number of students in each class.

SELECT C.CLASSNAME, COUNT(S.STUDENTID) AS Number_of_Students
FROM CLASSES AS C
JOIN STUDENT AS S ON C.CLASSID = S.CLASSID
GROUP BY C.CLASSNAME
ORDER BY Number_of_Students DESC;


--SELECT with HAVING:
--5) Write a query to find classes with more than 3 students.

SELECT C.CLASSNAME, COUNT(S.STUDENTID) AS Number_of_students
FROM CLASSES AS C
INNER JOIN STUDENT AS S ON C.CLASSID = S.CLASSID
GROUP BY C.CLASSNAME
HAVING COUNT(S.STUDENTID) > 3;
