CREATE DATABASE UniversityDatabase;

USE UniversityDatabase;

---Author-Book Relationship Using Joins and Basic SQL Operations

CREATE TABLE Author_Tbl(AuthId INT PRIMARY KEY, AuthName VARCHAR(30), AuthCountry VARCHAR(20));

CREATE TABLE Books_Tbl(BookId INT PRIMARY KEY, BookName VARCHAR(30), AuthID int, PublishYear int);

ALTER TABLE Books_Tbl ADD CONSTRAINT Fk_Books_Author FOREIGN KEY (AuthID) references Author_Tbl(AuthId);

INSERT INTO Author_Tbl (AuthId, AuthName, AuthCountry) values (101, 'Mansi', 'India'), (102, 'Mishika', 'India'), (103, 'Itika', 'America');

SELECT * FROM Author_Tbl;

INSERT INTO Books_Tbl(BookId, BookName, AuthID, PublishYear) values(1, 'Too Good To Be True', 101, 2024), 
																	(2, 'Atomic Habits', 102, 2022),
																	(3, 'RS Aggarwal Aptitude', 101, 2019);


SELECT * FROM Books_Tbl;


SELECT B.BookName, A.AuthName, A.AuthCountry
FROM Author_Tbl A
INNER JOIN
Books_Tbl B
ON (A.AuthId = B.AuthID);