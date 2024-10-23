
-- 1) Write an SQL query to join Students and Classes tables to fetch the following details:
--StudentID, FirstName, LastName, ClassName, and Teacher


USE SCHOOLDB;

select * from student;
select * from classes;

SELECT S.STUDENTID, S.FIRSTNAME, S.LASTNAME, C.CLASSNAME, C.TEACHER
FROM STUDENT AS S
INNER JOIN CLASSES AS C ON C.CLASSID = S.CLASSID;


--2) Write separate queries to demonstrate the following join types:
--INNER JOIN

SELECT S.STUDENTID, S.FIRSTNAME, S.LASTNAME, S.CLASSID, C.CLASSNAME, C.TEACHER
FROM STUDENT AS S
INNER JOIN CLASSES AS C ON C.CLASSID = S.CLASSID;  --Selects all matching records from both tables


--LEFT JOIN

SELECT S.STUDENTID, S.FIRSTNAME, S.LASTNAME, S.CLASSID, C.CLASSNAME, C.TEACHER
FROM STUDENT AS S
LEFT JOIN CLASSES AS C ON C.CLASSID = S.CLASSID;  --Selects all records in the left table and only matching records from the right table


--RIGHT JOIN
SELECT S.STUDENTID, S.FIRSTNAME, S.LASTNAME, S.CLASSID, C.CLASSNAME, C.TEACHER
FROM STUDENT AS S
RIGHT JOIN CLASSES AS C ON C.CLASSID = S.CLASSID;  --Selects all records in the right table and only matching records from the left table