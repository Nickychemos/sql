
-- 1)Create a New Database:
--Write an SQL query to create a new database named LibraryDB

CREATE DATABASE LibraryDB;



--2) Creating a New Table in the LibraryDB Database.

USE LibraryDB;

CREATE TABLE Books (
	BookID INT PRIMARY KEY IDENTITY (1,1),
	Title VARCHAR (150),
	Author VARCHAR (100),
	PublishedYear INT,
	Genre VARCHAR (50)
);



--Create an Index:
--3) Write an SQL query to create an index on the Author column of the Books table.

CREATE INDEX Index_Author
on Books (Author);

--to drop it

Alter table  Books
drop index Index_Author;