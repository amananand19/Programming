-- SQL COMMANDS
	  -- DDL (Data Definition Language)- Create,Alter,Drop,Truncate
      
    -- DML (Data Manipulation Language) - INSERT, UPDATE, DELETE --
    -- DCL (Data Control Language) - GRANT, REVOKE--
    -- TCL (Transaction Control Language) - COMMIT, ROLLBACK, SAVEPOINT--
    -- DQL (Data Query Language) - SELECT-- 


-- =========================================================
-- DATABASE CREATION
-- =========================================================

CREATE DATABASE Amansql;

USE Amansql;


-- =========================================================
-- DDL
-- DATA DEFINITION LANGUAGE
-- CREATE, ALTER, RENAME, TRUNCATE, DROP
-- =========================================================

-- 1. CREATE
CREATE TABLE Student (
    Stu_ID INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Check table structure
DESC Student;


-- 2. ALTER
-- Add a new column
ALTER TABLE Student ADD COLUMN city VARCHAR(50);

-- Check structure
DESC Student;


-- 3. ALTER
-- Modify column
ALTER TABLE Student MODIFY city VARCHAR(100);


-- 4. ALTER
-- Rename column
ALTER TABLE Student RENAME COLUMN city TO City;

-- Check structure
DESC Student;


-- 5. RENAME TABLE
RENAME TABLE Student TO Students;

-- Check renamed table
DESC Students;


-- Rename it back
RENAME TABLE Students TO Student;

DESC Student;


-- 6. TRUNCATE
-- Removes all records but keeps table structure.
-- Run this only when you want to empty the table.

-- TRUNCATE TABLE Student;


-- 7. DROP
-- Completely removes the table.
-- Run this only when you want to delete the table.

-- DROP TABLE Student;



-- =========================================================
-- DML
-- DATA MANIPULATION LANGUAGE
-- INSERT, UPDATE, DELETE
-- =========================================================

-- 1. INSERT
INSERT INTO Student
(Stu_ID, name, email, gender, date_of_birth, salary, City)
VALUES
(101, 'Amit Sharma', 'amit.sharma@gmail.com', 'Male',
 '2000-01-15', 45000.00, 'Kolkata'),

(102, 'Priya Singh', 'priya.singh@gmail.com', 'Female',
 '2001-06-20', 60000.00, 'Delhi'),

(103, 'Rahul Verma', 'rahul.verma@gmail.com', 'Male',
 '1999-03-10', 75000.00, 'Bengaluru'),

(104, 'Sneha Roy', 'sneha.roy@gmail.com', 'Female',
 '2002-02-18', 55000.00, 'Kolkata'),

(105, 'Arjun Das', 'arjun.das@gmail.com', 'Male',
 '1998-09-25', 80000.00, 'Hyderabad'),

(106, 'Neha Gupta', 'neha.gupta@gmail.com', 'Female',
 '2000-11-05', 49000.00, 'Mumbai'),

(107, 'Vikram Patel', 'vikram.patel@gmail.com', 'Male',
 '1999-08-12', 65000.00, 'Ahmedabad'),

(108, 'Ananya Sen', 'ananya.sen@gmail.com', 'Female',
 '2003-01-08', 47000.00, 'Kolkata'),

(109, 'Rohan Mehta', 'rohan.mehta@gmail.com', 'Male',
 '2001-05-17', 52000.00, 'Pune'),

(110, 'Kavita Nair', 'kavita.nair@gmail.com', 'Female',
 '1999-12-01', 58000.00, 'Chennai');


-- INSERT without specifying column names
INSERT INTO Student
VALUES
(111, 'Amit Kumar', 'amit111@gmail.com', 'Male',
 '2000-01-15', 45000.00, DEFAULT, 'Kolkata');


-- INSERT with NULL
INSERT INTO Student
VALUES
(112, 'Rahul Kumar', 'rahul112@gmail.com', 'Male',
 NULL, 45000.00, DEFAULT, NULL);


-- INSERT selected columns
INSERT INTO Student
(Stu_ID, name, email, gender, salary)
VALUES
(113, 'Neha Sharma', 'neha113@gmail.com', 'Female', 50000.00);


-- 2. UPDATE
UPDATE Student
SET salary = 55000.00
WHERE Stu_ID = 113;


-- 3. DELETE
DELETE FROM Student
WHERE Stu_ID = 113;



-- =========================================================
-- DQL
-- DATA QUERY LANGUAGE
-- SELECT
-- =========================================================

-- Select all columns
SELECT * FROM Student;

-- Select specific columns
SELECT name, email, gender FROM Student;

-- WHERE condition
SELECT * FROM Student WHERE salary > 50000;

-- AND condition
SELECT * FROM Student WHERE gender = 'Male' AND salary > 50000;

-- OR condition
SELECT *
FROM Student
WHERE City = 'Kolkata'
OR City = 'Delhi';

-- ORDER BY
SELECT *
FROM Student
ORDER BY salary DESC;



-- =========================================================
-- TCL
-- TRANSACTION CONTROL LANGUAGE
-- COMMIT, ROLLBACK, SAVEPOINT
-- =========================================================

START TRANSACTION;


-- UPDATE inside transaction
UPDATE Student
SET salary = 90000
WHERE Stu_ID = 101;


-- SAVEPOINT
SAVEPOINT salary_update;


-- Another update
UPDATE Student
SET salary = 95000
WHERE Stu_ID = 102;


-- ROLLBACK to savepoint
ROLLBACK TO SAVEPOINT salary_update;


-- COMMIT the remaining change
COMMIT;



-- =========================================================
-- DCL
-- DATA CONTROL LANGUAGE
-- GRANT, REVOKE
-- =========================================================

-- Create user
-- CREATE USER 'aman'@'localhost'
-- IDENTIFIED BY 'Password123';


-- GRANT
-- GRANT SELECT
-- ON Amansql.Student
-- TO 'aman'@'localhost';


-- REVOKE
-- REVOKE SELECT
-- ON Amansql.Student
-- FROM 'aman'@'localhost';



-- =========================================================
-- FINAL OUTPUT
-- =========================================================

SELECT * FROM Student;

DESC Student;
