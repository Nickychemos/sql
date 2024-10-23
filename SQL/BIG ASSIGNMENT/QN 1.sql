
--1) DATABASE CREATION

CREATE DATABASE SchoolDB;	

--MAKING USE OF THE DATABASE

USE SchoolDB;


--2) TABLE DEFINITION; CREATING THE STUDENT AND CLASSES TABLES

CREATE TABLE STUDENT (
	StudentID INT PRIMARY KEY IDENTITY (5000, 1),
	FirstName VARCHAR (50),
	LastName VARCHAR (50),
	ClassID INT,
	FOREIGN KEY (ClassID) REFERENCES Classes (ClassID)
);


CREATE TABLE CLASSES (
	ClassID INT PRIMARY KEY,
	ClassName VARCHAR (100),
	Teacher VARCHAR (100)
);



--3) INSERTING THE DATA INTO BOTH TABLES

INSERT INTO CLASSES VALUES 
(100, 'Blue', 'Mr.John'),
(101, 'Red', 'Mrs.Joan'),
(102, 'Green', 'Mrs.Vashnadze'),
(103, 'Yellow', 'Mrs.Chepkemoi'),
(104, 'Cyan', 'Mr.Kibet'),
(105, 'Orange', 'Mrs.Kioko'),
(106, 'Maroon', 'Mr.McKenzie'); 


INSERT INTO STUDENT VALUES
('Misiko', 'Kakai', 100),
('Mithika', 'Komatsu', 106),
('Jean', 'Kwamboka', 106),
('Mathew', 'Kibett', 105),
('Maranda', 'Koskei', 101),
('Mercy', 'Mercina', 102),
('Asbel', 'Kiprop', 100),
('James', 'Maki', 102),
('Sospeter', 'Songok', 101),
('Micheal', 'Oguttu', 105),
('Michelle', 'Oguttu', 105),
('Hosea', 'Injinde', 100);



-- 4) QUERY
---------A query that displays all students along with their respective class names

SELECT S.STUDENTID, S.FIRSTNAME, S.LASTNAME, C.CLASSNAME
FROM STUDENT AS S
LEFT JOIN CLASSES AS C ON S.CLASSID = C.CLASSID;

