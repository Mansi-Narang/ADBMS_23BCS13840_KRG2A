--Department-Course Subquery and Access Control

CREATE TABLE Department_Tbl(DeptId int PRIMARY KEY, DeptName varchar(30));

CREATE TABLE Courses(CourseId int Primary key, CourseName varchar(30), DeptId int, FOREIGN KEY(DeptId) REFERENCES Department_Tbl(DeptId));

INSERT INTO Department_Tbl(DeptId, DeptName) VALUES
(1, 'COMPUTER SCIENCE'),
(2, 'MECHANICAL ENGINEERING'),
(3, 'PHYSICS'),
(4, 'MATHEMATICS');

INSERT INTO Courses (CourseId, CourseName, DeptId) VALUES
(101, 'DATA STRUCTURES', 1),
(102, 'OPERATING SYSTEMS', 1),
(103, 'DATABASE SYSTEMS', 1),
(201, 'THERMODYNAMICS', 2),
(202, 'FLUID MECHANICS', 2),
(203, 'MACHINE DESIGN', 2),
(301, 'CLASSICAL MECHANICS', 3),
(401, 'CIRCUIT THEORY', 4),
(402, 'DIGITAL LOGIC DESIGN', 4);


SELECT D.DeptName, COUNT(C.DeptId) AS [NO OF COURSES]
FROM Department_Tbl D
INNER JOIN
Courses C
ON D.DeptId = C.DeptId
GROUP BY D.DeptName;


SELECT D.DeptName, COUNT(C.DeptId) AS [NO OF COURSES]
FROM Department_Tbl D
INNER JOIN
Courses C
ON D.DeptId = C.DeptId
GROUP BY D.DeptName
HAVING COUNT(C.DeptId) > 2;

create login mansi with password = 'mansi';

CREATE USER Mansi;

GRANT SELECT ON COURSES TO MANSI; 