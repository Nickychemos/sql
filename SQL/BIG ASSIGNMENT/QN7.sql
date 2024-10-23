--Add a Column:
--1) Write an SQL query to add a new column Email (Varchar, 100) to the Students table.

USE SchoolDB;

ALTER TABLE STUDENT
ADD Email VARCHAR (100);

Select * from student;

--Modify a Column:
-- 2) Write an SQL query to change the data type of the PublishedYear column in the Books table to VARCHAR(4).

USE LibraryDB;

ALTER TABLE BOOKS
ALTER COLUMN PublishedYear VARCHAR(4);

Select * from Books;

-- Drop a Column:
-- 3) Write an SQL query to drop the Genre column from the Books table.

USE LibraryDB;

ALTER TABLE BOOKS
DROP COLUMN GENRE;