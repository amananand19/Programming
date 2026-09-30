-- Creating database
CREATE DATABASE Amansql;
-- USE database
USE Amansql;

-- Create Employee Table
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Gender VARCHAR(10),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    Hire_Date DATE,
    City VARCHAR(50)
);

-- Description-- 
DESC Employee;

-- Inseration Data into Employee Table
INSERT INTO Employee
(Emp_ID, First_Name, Last_Name, Gender, Department, Salary, Hire_Date, City)
VALUES
(101, 'Amit', 'Sharma', 'Male', 'HR', 45000.00, '2022-01-15', 'Kolkata'),
(102, 'Priya', 'Singh', 'Female', 'Finance', 60000.00, '2021-06-20', 'Delhi'),
(103, 'Rahul', 'Verma', 'Male', 'IT', 75000.00, '2020-03-10', 'Bengaluru'),
(104, 'Sneha', 'Roy', 'Female', 'Marketing', 55000.00, '2023-02-18', 'Kolkata'),
(105, 'Arjun', 'Das', 'Male', 'IT', 80000.00, '2019-09-25', 'Hyderabad'),
(106, 'Neha', 'Gupta', 'Female', 'Sales', 49000.00, '2022-11-05', 'Mumbai'),
(107, 'Vikram', 'Patel', 'Male', 'Finance', 65000.00, '2021-08-12', 'Ahmedabad'),
(108, 'Ananya', 'Sen', 'Female', 'HR', 47000.00, '2024-01-08', 'Kolkata'),
(109, 'Rohan', 'Mehta', 'Male', 'Sales', 52000.00, '2023-05-17', 'Pune'),
(110, 'Kavita', 'Nair', 'Female', 'Marketing', 58000.00, '2020-12-01', 'Chennai');

-- Show the Data 
select * from Employee;

--Insertion new columns
INSERT INTO Employee
VALUES
(111, 'Amit', 'Sharma', 'Male', 'HR', 45000.00, '2022-01-15', 'Kolkata');

INSERT INTO Employee
VALUES
(112, 'Amit', 'Sharma', 'Male', 'HR', 45000.00, '2022-01-15', null);

INSERT INTO Employee
(Emp_ID, First_Name, Gender, Department, Hire_Date, City)
VALUES
(113, 'Amit', 'Male', 'HR', '2022-01-15', 'Kolkata');

-- Rename employee to emp
rename table employee to emp;
desc emp;
rename table emp to employee;
desc employee;
select * from employee;




-- Create Student Table
Create Table Student (
	Stu_ID INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	gender ENUM('Male', 'Female', 'Other'),
	date_of_birth DATE,
	salary DECIMAL(10,2),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	);

-- Description-- 
DESC Student;

-- Inseration Data into Student Table
INSERT INTO Student
(Stu_ID, name, email, gender, date_of_birth, salary)
VALUES
(101, 'Amit Sharma', 'amit.sharma@gmail.com', 'Male', '2000-01-15', 45000.00),
(102, 'Priya Singh', 'priya.singh@gmail.com', 'Female', '2001-06-20', 60000.00),
(103, 'Rahul Verma', 'rahul.verma@gmail.com', 'Male', '1999-03-10', 75000.00),
(104, 'Sneha Roy', 'sneha.roy@gmail.com', 'Female', '2002-02-18', 55000.00),
(105, 'Arjun Das', 'arjun.das@gmail.com', 'Male', '1998-09-25', 80000.00),
(106, 'Neha Gupta', 'neha.gupta@gmail.com', 'Female', '2000-11-05', 49000.00),
(107, 'Vikram Patel', 'vikram.patel@gmail.com', 'Male', '1999-08-12', 65000.00),
(108, 'Ananya Sen', 'ananya.sen@gmail.com', 'Female', '2003-01-08', 47000.00),
(109, 'Rohan Mehta', 'rohan.mehta@gmail.com', 'Male', '2001-05-17', 52000.00),
(110, 'Kavita Nair', 'kavita.nair@gmail.com', 'Female', '1999-12-01', 58000.00);


--Insertion new columns
INSERT INTO Student
VALUES
(111, 'Amit Sharma', 'amit111@gmail.com', 'Male', '2000-01-15', 45000.00, DEFAULT);

INSERT INTO Student
VALUES
(112, 'Amit Sharma', 'amit112@gmail.com', 'Male', NULL, 45000.00, DEFAULT);

INSERT INTO Student
(Stu_ID, name, email, gender, salary)
VALUES
(113, 'Amit Sharma', 'amit113@gmail.com', 'Male', 45000.00);

select * from Student;

-- SELECT   SPECIFIC--
Select email,gender from Student;

-- RENAME  TABLE--
Rename Table Student to Employee;
Rename Table  Employee to Student;
Select * from Student;
