create database Company;
use company;

CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_Name VARCHAR(50),
    DOB DATE,
    Age INT CHECK (Age >= 18),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender CHAR(1),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2) NOT NULL
);

desc managers;

-- inserting 10 row 
INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Gender, Department, Salary)
VALUES
(1, 'John', 'Doe', '1985-01-15', 39, 'M', 'Finance', 30000),
(2, 'Aaliya', 'Khan', '1990-03-12', 34, 'F', 'IT', 28000),
(3, 'Michael', 'Smith', '1987-07-23', 37, 'M', 'HR', 24000),
(4, 'Sara', 'Johnson', '1992-11-02', 32, 'F', 'Sales', 35000),
(5, 'David', 'Brown', '1984-09-10', 40, 'M', 'IT', 27000),
(6, 'Emma', 'Davis', '1995-05-05', 29, 'F', 'Finance', 26000),
(7, 'Robert', 'Taylor', '1989-06-17', 35, 'M', 'IT', 30000),
(8, 'Emily', 'Wilson', '1991-04-29', 33, 'F', 'HR', 22000),
(9, 'Daniel', 'Lee', '1983-12-15', 41, 'M', 'Sales', 24000),
(10, 'Olivia', 'Martin', '1994-08-20', 30, 'F', 'IT', 29000);

select * from managers;

-- retrives name and DOB "Manager_id 1" 
SELECT First_name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;


-- Display Records of All Managers Except 'Aaliya'
SELECT *
FROM Managers
WHERE First_name <> 'Aaliya';

-- Display Details of Managers in IT Department with Salary > 25000
SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

-- Display Details of Managers with Salary Between 10000 and 35000
SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;

