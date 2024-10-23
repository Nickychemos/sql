use SchoolDB

--Insert Single Record:

--1) Write an SQL query to insert a new student into the Students table with the following details:
--FirstName: 'Alice'
-- LastName: 'Johnson'
-- ClassID: 1 ----------(I will use 101 instead of 1)select * from student;
select * from classes;INSERT INTO STUDENT VALUES ('Alice', 'Johnson', 101);
-- Insert Multiple Records:

--2) Write an SQL query to insert the following students into the Students table:
--('Michael', 'Brown', 2) (I will use 102 and 103)
--('Linda', 'Green', 3)---------(I will use 102 and 103 instead of 2 & 3)INSERT INTO STUDENT VALUES ('Michael', 'Brown', 102),('Linda', 'Green', 103);