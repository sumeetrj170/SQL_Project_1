-- Create the database

CREATE DATABASE EmployeeManagement;
USE EmployeeManagement;

-- Create the Department table

CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
DepartmentName VARCHAR(50) NOT NULL,
Location VARCHAR(50),
HeadOfDepartment VARCHAR(50),
AnnualBudget DECIMAL(10, 2)
);

-- Create the Employee table

CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DepartmentID INT,
Salary DECIMAL(10, 2),
DateOfJoining DATE,
Email VARCHAR(100),
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert records into Departments table

INSERT INTO Departments (DepartmentName, Location, HeadOfDepartment, AnnualBudget)
VALUES
('HR', 'Pune', 'Raj Sharma', 500000),
('Finance', 'Mumbai', 'Sneha Gupta', 1000000),
('IT', 'Bangalore', 'Anil Kumar', 1500000),
('Sales', 'Delhi', 'Priya Singh', 1200000),
('Operations', 'Pune', 'Ravi Patil', 900000),
('Admin', 'Chennai', 'Geeta Reddy', 400000),
('Legal', 'Hyderabad', 'Amit Desai', 600000),
('Logistics', 'Mumbai', 'Nisha Joshi', 700000),
('Research', 'Bangalore', 'Vikram Roy', 2000000),
('Support', 'Pune', 'Arun Kumar', 800000);

-- Insert records into Employees table
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, DateOfJoining, Email)
VALUES
('Ravi', 'Sharma', 1, 45000, '2022-05-20', 'ravi.sharma@example.com'),
('Priya', 'Patil', 2, 60000, '2021-03-15', 'priya.patil@example.com'),
('Amit', 'Kumar', 3, 75000, '2020-01-10', 'amit.kumar@example.com'),
('Sneha', 'Desai', 4, 50000, '2019-07-22', 'sneha.desai@example.com'),
('Nisha', 'Joshi', 5, 55000, '2023-08-01', 'nisha.joshi@example.com'),
('Raj', 'Verma', 6, 48000, '2022-09-14', 'raj.verma@example.com'),
('Anil', 'Roy', 7, 70000, '2020-02-20', 'anil.roy@example.com'),
('Vikram', 'Chauhan', 8, 45000, '2023-06-11', 'vikram.chauhan@example.com'),
('Arun', 'Khan', 9, 65000, '2021-12-03', 'arun.khan@example.com'),
('Geeta', 'Reddy', 10, 62000, '2020-11-10', 'geeta.reddy@example.com'),
('Rohit', 'Sharma', 1, 46000, '2022-03-25', 'rohit.sharma@example.com'),
('Pooja', 'Mehta', 2, 59000, '2021-05-17', 'pooja.mehta@example.com'),
('Karan', 'Jain', 3, 73000, '2020-08-10', 'karan.jain@example.com'),
('Smita', 'Pawar', 4, 51000, '2019-09-14', 'smita.pawar@example.com'),
('Neha', 'Deshmukh', 5, 57000, '2023-10-19', 'neha.deshmukh@example.com'),
('Rahul', 'Joshi', 6, 50000, '2022-07-07', 'rahul.joshi@example.com'),
('Ajay', 'Roy', 7, 72000, '2020-03-25', 'ajay.roy@example.com'),
('Sunita', 'Sharma', 8, 48000, '2023-11-21', 'sunita.sharma@example.com'),
('Akshay', 'Patil', 9, 68000, '2021-01-15', 'akshay.patil@example.com'),
('Isha', 'Reddy', 10, 64000, '2020-06-12', 'isha.reddy@example.com'),
('Vivek', 'Shah', 1, 47000, '2022-02-23', 'vivek.shah@example.com'),
('Tina', 'Gupta', 2, 58000, '2021-06-28', 'tina.gupta@example.com'),
('Aditya', 'Kumar', 3, 72000, '2020-09-05', 'aditya.kumar@example.com'),
('Simran', 'Pawar', 4, 52000, '2019-11-08', 'simran.pawar@example.com'),
('Sanjay', 'Deshmukh', 5, 56000, '2023-05-30', 'sanjay.deshmukh@example.com'),
('Anjali', 'Joshi', 6, 51000, '2022-08-17', 'anjali.joshi@example.com'),
('Ramesh', 'Roy', 7, 74000, '2020-04-16', 'ramesh.roy@example.com'),
('Preeti', 'Sharma', 8, 49000, '2023-12-05', 'preeti.sharma@example.com'),
('Ankur', 'Patil', 9, 66000, '2021-07-13', 'ankur.patil@example.com'),
('Meera', 'Reddy', 10, 61000, '2020-10-20', 'meera.reddy@example.com'),
('Vikas', 'Shah', 1, 49000, '2022-04-04', 'vikas.shah@example.com'),
('Neeta', 'Gupta', 2, 60000, '2021-09-09', 'neeta.gupta@example.com'),
('Ashish', 'Kumar', 3, 74000, '2020-12-01', 'ashish.kumar@example.com'),
('Ritu', 'Pawar', 4, 53000, '2019-10-24', 'ritu.pawar@example.com'),
('Santosh', 'Deshmukh', 5, 58000, '2023-02-18', 'santosh.deshmukh@example.com'),
('Lata', 'Joshi', 6, 52000, '2022-11-29', 'lata.joshi@example.com'),
('Arjun', 'Roy', 7, 71000, '2020-07-04', 'arjun.roy@example.com'),
('Kiran', 'Sharma', 8, 50000, '2023-03-10', 'kiran.sharma@example.com'),
('Mohit', 'Patil', 9, 67000, '2021-11-11', 'mohit.patil@example.com'),
('Naina', 'Reddy', 10, 63000, '2020-02-14', 'naina.reddy@example.com');

SELECT * from Departments;

SELECT * from Employees;

-- Situational INSERT
INSERT INTO Employees 
(FirstName, LastName, DepartmentID, Salary, DateOfJoining, Email)
VALUES
('Siddharth', 'Gupta', 3, 70000, '2024-01-01', 'siddharth.gupta@example.com'),
('Aarav', 'Jain', 3, 72000, '2024-01-02', 'aarav.jain@example.com');

SELECT * from Employees;

INSERT INTO Departments 
(DepartmentName, Location, HeadOfDepartment, AnnualBudget)
VALUES
('Marketing', 'Pune', 'Rakesh Mehta', 1300000);

SELECT * from  Departments;

INSERT INTO Employees
(FirstName, LastName, DepartmentID, Salary, DateOfJoining, Email)
VALUES
('Rahul', 'Mehra', 11, 58000, '2024-01-10', 'rahul.mehra@example.com'),
('Sara', 'Kapoor', 11, 62000, '2024-01-11', 'sara.kapoor@example.com'),
('Nitin', 'Shah', 11, 60000, '2024-01-12', 'nitin.shah@example.com');


SELECT * from Employees;

INSERT INTO Employees
(FirstName, LastName, DepartmentID, Salary, DateOfJoining, Email)
VALUES
('Riya', 'Sharma', 1, 50000, '2024-02-01', 'riya.sharma@example.com'),
('Mohit', 'Desai', 1, 55000, '2024-02-02', 'mohit.desai@example.com');

SELECT * from Employees;

INSERT INTO Employees
(FirstName, LastName, DepartmentID, Salary, DateOfJoining, Email)
VALUES
('Sneha', 'Rao', 2, 60000, '2024-02-15', 'sneha.rao@example.com');


SELECT * from Employees;

INSERT INTO Employees
(FirstName, LastName, DepartmentID, Salary, DateOfJoining, Email)
VALUES
('Aditya', 'Malhotra', 7, 65000, '2024-03-01', 'aditya.malhotra@example.com'),
('Priyanka', 'Kapoor', 7, 67000, '2024-03-02', 'priyanka.kapoor@example.com'),
('Kunal', 'Singh', 7, 68000, '2024-03-03', 'kunal.singh@example.com');

SELECT * from Employees;

INSERT INTO Departments
(DepartmentName, Location, HeadOfDepartment, AnnualBudget)
VALUES
('Research', 'Hyderabad', 'Dr. Meera Joshi', 2000000);

SELECT * from  Departments;

INSERT INTO Employees
(FirstName, LastName, DepartmentID, Salary, DateOfJoining, Email)
VALUES
('Arjun', 'Shah', 12, 75000, '2024-04-01', 'arjun.shah@example.com'),
('Riya', 'Patel', 12, 72000, '2024-04-02', 'riya.patel@example.com');


SELECT * from Employees;

INSERT INTO Departments
(DepartmentName, Location, HeadOfDepartment, AnnualBudget)
VALUES
('Logistics', 'Chennai', 'Ravi Verma', 900000);

SELECT * from  Departments;

INSERT INTO Employees
(FirstName, LastName, DepartmentID, Salary, DateOfJoining, Email)
VALUES
('Kavita', 'Desai', 13, 50000, '2024-05-01', 'kavita.desai@example.com'),
('Amit', 'Jain', 13, 52000, '2024-05-02', 'amit.jain@example.com');


SELECT * from Employees;

-- Situational WHERE clause

SELECT *
FROM Employees
WHERE DepartmentID = 3;

SELECT *
FROM Employees
WHERE DateOfJoining > '2024-01-01';

SELECT *
FROM Employees
WHERE Salary > 60000;

SELECT *
FROM Employees
WHERE Email LIKE '%@example.com';

SELECT *
FROM Employees
WHERE DepartmentID = 11
  AND Salary < 60000;

SELECT *
FROM Employees
WHERE FirstName LIKE 'S%';

SELECT *
FROM Employees
WHERE DateOfJoining BETWEEN '2024-02-01' AND '2024-02-29';
-- or
SELECT *
FROM Employees
WHERE MONTH(DateOfJoining) = 2
  AND YEAR(DateOfJoining) = 2024;

SELECT *
FROM Employees
WHERE Salary BETWEEN 50000 AND 70000;

SELECT *
FROM Employees
WHERE DateOfJoining < '2024-03-01'
  AND Salary > 55000;

SELECT *
FROM Employees
WHERE FirstName LIKE '%Manager%'
   OR LastName LIKE '%Manager%';

SELECT *
FROM Departments
WHERE Location = 'Pune';

SELECT *
FROM Departments
WHERE AnnualBudget > 1000000;

SELECT *
FROM Departments
WHERE HeadOfDepartment = 'Rakesh Mehta';

SELECT *
FROM Departments
WHERE DepartmentName LIKE 'M%';

SELECT *
FROM Departments
WHERE AnnualBudget BETWEEN 800000 AND 1500000;

-- Situatonal GROUP BY clause
SELECT 
    DepartmentID,
    SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY DepartmentID;

SELECT * from Employees;

SELECT 
    DepartmentID,
    COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID;

SELECT 
    d.DepartmentID,
    d.DepartmentName,
    COUNT(e.EmployeeID) AS EmployeeCount
FROM Departments d
LEFT JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY EmployeeCount DESC;

SELECT *
FROM Departments;

SELECT 
    d.DepartmentID,
    d.DepartmentName,
    AVG(e.Salary) AS AverageSalary
FROM Departments d
JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY AverageSalary DESC;

SELECT 
    d.DepartmentName,
    AVG(e.Salary) AS AverageSalary
FROM Departments d
LEFT JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

SELECT 
    d.DepartmentID,
    d.DepartmentName,
    MIN(e.DateOfJoining) AS EarliestJoiningDate
FROM Departments d
JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY EarliestJoiningDate;

SELECT 
    d.DepartmentName,
    MIN(e.DateOfJoining) AS EarliestJoiningDate
FROM Departments d
LEFT JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

SELECT 
    d.DepartmentID,
    d.DepartmentName,
    MAX(e.Salary) AS MaxSalary
FROM Departments d
JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY MaxSalary DESC;

SELECT 
    d.DepartmentID,
    d.DepartmentName,
    MIN(e.Salary) AS MinSalary
FROM Departments d
JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY MinSalary;

SELECT 
    d.DepartmentID,
    d.DepartmentName,
    SUM(e.Salary) AS TotalHighSalaryPaid
FROM Departments d
JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
WHERE e.Salary > 60000
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY TotalHighSalaryPaid DESC;


SELECT 
    d.DepartmentID,
    d.DepartmentName,
    COUNT(e.EmployeeID) AS EmployeesJoinedIn2024
FROM Departments d
LEFT JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
  AND YEAR(e.DateOfJoining) = 2024
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY EmployeesJoinedIn2024 DESC;

SELECT 
    DepartmentID,
    COUNT(*) AS EmployeesJoinedIn2024
FROM Employees
WHERE YEAR(DateOfJoining) = 2024
GROUP BY DepartmentID;

SELECT 
    d.DepartmentID,
    d.DepartmentName,
    COUNT(e.EmployeeID) AS MidRangeEmployeeCount
FROM Departments d
LEFT JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
  AND e.Salary BETWEEN 50000 AND 70000
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY MidRangeEmployeeCount DESC;

SELECT 
    DepartmentID,
    COUNT(*) AS MidRangeEmployeeCount
FROM Employees
WHERE Salary BETWEEN 50000 AND 70000
GROUP BY DepartmentID;

SELECT 
    LEFT(FirstName, 1) AS StartingLetter,
    COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY LEFT(FirstName, 1)
ORDER BY StartingLetter;

SELECT 
    LEFT(FirstName, 1) AS StartingLetter,
    COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY LEFT(FirstName, 1)
UNION ALL
SELECT 
    LEFT(LastName, 1) AS StartingLetter,
    COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY LEFT(LastName, 1)
ORDER BY StartingLetter;

SELECT 
    Location,
    COUNT(*) AS DepartmentCount
FROM Departments
GROUP BY Location
ORDER BY DepartmentCount DESC;

SELECT
    Location,
    SUM(AnnualBudget) AS TotalBudget
FROM Departments
GROUP BY Location;

SELECT
    HeadOfDepartment,
    COUNT(*) AS DepartmentCount
FROM Departments
GROUP BY HeadOfDepartment;

SELECT
    Location,
    AVG(AnnualBudget) AS AverageBudget
FROM Departments
GROUP BY Location
ORDER BY AverageBudget DESC;

SELECT
    Location,
    MAX(AnnualBudget) AS MaxBudget,
    MIN(AnnualBudget) AS MinBudget
FROM Departments
GROUP BY Location
ORDER BY Location;

-- Situational CONCAT
SELECT 
    EmployeeID,
    CONCAT(FirstName, ' ', LastName) AS FullName,
    DepartmentID,
    Salary,
    DateOfJoining,
    Email
FROM Employees;

SELECT * from Employees;

SELECT
    DepartmentID,
    CONCAT(DepartmentName, ', ', Location) AS DepartmentAddress,
    HeadOfDepartment,
    AnnualBudget
FROM Departments;

SELECT
    EmployeeID,
    CONCAT('Hello ', FirstName, ' ', LastName, ',') AS Greeting,
    Email
FROM Employees;


ALTER TABLE Employees
ADD COLUMN PhoneNumber VARCHAR(15),
ADD COLUMN Extension VARCHAR(10);

SELECT
    EmployeeID,
    FirstName,
    LastName,
    PhoneNumber,
    Extension,
    CONCAT(
        PhoneNumber,
        IF(Extension IS NOT NULL AND Extension <> '', CONCAT(' ext.', Extension), '')
    ) AS FullContact
FROM Employees;

ALTER TABLE Employees
ADD COLUMN Street VARCHAR(100),
ADD COLUMN City VARCHAR(50),
ADD COLUMN PostalCode VARCHAR(10);

SELECT
    EmployeeID,
    FirstName,
    LastName,
    CONCAT(Street, ', ', City, ', ', PostalCode) AS CompleteAddress
FROM Employees;

SELECT
    EmployeeID,
    FirstName,
    LastName,
    DepartmentID,
    CONCAT(LOWER(FirstName), '.', LOWER(LastName), DepartmentID) AS LoginID
FROM Employees;

ALTER TABLE Employees
ADD COLUMN Position VARCHAR(50);

SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    d.DepartmentName,
    e.Position,
    CONCAT(d.DepartmentName, ' ', e.Position) AS DepartmentPosition
FROM Employees e
JOIN Departments d
  ON e.DepartmentID = d.DepartmentID;

ALTER TABLE Employees
ADD COLUMN JobTitle VARCHAR(50),
ADD COLUMN CurrentProject VARCHAR(100);

SELECT
    EmployeeID,
    FirstName,
    LastName,
    JobTitle,
    CurrentProject,
    CONCAT(JobTitle, ' - ', CurrentProject) AS WorkStatus
FROM Employees;

SELECT
    EmployeeID,
    FirstName,
    CONCAT(YEAR(DateOfJoining), '-', FirstName) AS ReportRefCode
FROM Employees;

-- Situational UPDATE clause
UPDATE Employees
SET Salary = Salary * 1.10
WHERE DepartmentID = 3;

SELECT * from Employees;

UPDATE Employees
SET JobTitle = 'Senior Developer'
WHERE EmployeeID = 10;

SELECT * from Employees;

UPDATE Employees
SET PhoneNumber = '9876543210'
WHERE EmployeeID = 12;

SELECT * from Employees;

UPDATE Employees
SET Email = REPLACE(Email, '@example.com', '@newcompany.com')
WHERE DateOfJoining > '2023-01-01';

SET SQL_SAFE_UPDATES = 0;

UPDATE Employees
SET Email = REPLACE(Email, '@example.com', '@newcompany.com')
WHERE DateOfJoining > '2023-01-01';

SET SQL_SAFE_UPDATES = 1;

UPDATE Departments
SET DepartmentName = 'Human Resources'
WHERE DepartmentID = 5;

SELECT * from Departments;

UPDATE Employees
SET Salary = Salary + 5000
WHERE Salary < 50000;

SET SQL_SAFE_UPDATES = 0;

UPDATE Employees
SET Salary = Salary + 5000
WHERE Salary < 50000;

SELECT * from Employees;

UPDATE Departments
SET Location = 'Mumbai'
WHERE DepartmentID = 11;

SELECT * from Departments;

UPDATE Employees
SET Salary = 60000
WHERE EmployeeID = 35;

SELECT * from Employees;

UPDATE Employees
SET CurrentProject = 'Project Alpha'
WHERE EmployeeID = 11;

SELECT * from Employees;

UPDATE Employees
SET DateOfJoining = '2024-03-15'
WHERE EmployeeID = 10;

SELECT * from Employees;

-- Situational DELETE clause 

DELETE FROM Employees
WHERE EmployeeID = 10;

SELECT * from Employees;

DELETE FROM Employees
WHERE DepartmentID = 2
  AND DateOfJoining < '2022-01-01';
  
  SELECT * from Employees;
  
  DELETE FROM Employees
WHERE Salary < 30000;

DELETE FROM Employees
WHERE DateOfJoining < '2020-01-01'
  AND (CurrentProject IS NULL OR CurrentProject = '');

  SELECT * from Employees;
  
  DELETE FROM Employees
WHERE CurrentProject = 'Project Beta';

DELETE FROM Employees
WHERE EmployeeID = 15;

DELETE FROM Employees
WHERE DepartmentID = 3
  AND DateOfJoining < '2021-01-01';
  
  DELETE FROM Employees
WHERE (Email IS NULL OR Email = '')
   OR (PhoneNumber IS NULL OR PhoneNumber = '');
   
   DELETE FROM Employees
WHERE Region = 'North'
  AND EndDate < '2023-01-01';

ALTER TABLE Employees
ADD COLUMN Region VARCHAR(50);


UPDATE Employees
SET Region = 'North'
WHERE DepartmentID IN (2, 5, 8);


  SELECT * from Employees;

-- Situational Table Schema

  SELECT * from Employees;
  
  RENAME TABLE Employees TO Staff;
  
  RENAME TABLE Staff TO Employees;

 ALTER TABLE Employees
ADD COLUMN MaritalStatus VARCHAR(20);

ALTER TABLE Employees
ADD COLUMN DateOfBirth DATE;

DESCRIBE Employees;

ALTER TABLE Employees
MODIFY COLUMN Salary DECIMAL(10,2);

DESCRIBE Employees;

ALTER TABLE Employees
ADD COLUMN EmployeeCategory ENUM('Full-time', 'Part-time', 'Contract');

DESCRIBE Employees;

ALTER TABLE Employees
ADD COLUMN DepartmentName VARCHAR(100);

ALTER TABLE Employees
MODIFY COLUMN Status VARCHAR(20) DEFAULT 'Active';

ALTER TABLE Employees
ADD COLUMN Status VARCHAR(20) DEFAULT 'Active';

DESCRIBE Employees;

ALTER TABLE Employees
RENAME COLUMN DepartmentID TO TeamID;

DESCRIBE Employees;

CREATE TABLE Employees_Partitioned (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    TeamID INT,
    Salary DECIMAL(10,2),
    DateOfJoining DATE NOT NULL,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Extension VARCHAR(10),
    Street VARCHAR(100),
    City VARCHAR(50),
    PostalCode VARCHAR(10),
    Position VARCHAR(50),
    JobTitle VARCHAR(50),
    CurrentProject VARCHAR(100),
    Region VARCHAR(50),
    MaritalStatus VARCHAR(20),
    DateOfBirth DATE,
    EmployeeCategory ENUM('Full-time','Part-time','Contract'),
    DepartmentName VARCHAR(100),
    Status VARCHAR(20) DEFAULT 'Active',
    PRIMARY KEY (EmployeeID, DateOfJoining)
)
PARTITION BY RANGE (YEAR(DateOfJoining)) (
    PARTITION p_old VALUES LESS THAN (2020),
    PARTITION p_recent VALUES LESS THAN (9999)
);

INSERT INTO Employees_Partitioned
SELECT * FROM Employees;

RENAME TABLE Employees TO Employees_Archive,
             Employees_Partitioned TO Employees;

ALTER TABLE Employees
ADD CONSTRAINT fk_employees_departments
FOREIGN KEY (TeamID)
REFERENCES Departments(DepartmentID);

ALTER TABLE Employees REMOVE PARTITIONING;

ALTER TABLE Employees
ADD CONSTRAINT fk_employees_departments
FOREIGN KEY (TeamID)
REFERENCES Departments(DepartmentID);

SHOW CREATE TABLE Employees;
