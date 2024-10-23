
USE SchoolDB;

--Single Record Update:
--1)Write an SQL query to update the Teacher of a class with ClassID 2 to 'Mr.Smith'. (I will use classid 102 instead of 2)select *from classes;select * from student;UPDATE classesSET Teacher = 'Mr.Smith'WHERE ClassID = 102;--Multiple Records Update:
--2) Write an SQL query to increase the ClassID of all students with StudentID greater than 3 by 1. (I will use 103 instead of 3)

UPDATE STUDENT
SET ClASSID = CLASSID + 1
WHERE STUDENTID > 103;