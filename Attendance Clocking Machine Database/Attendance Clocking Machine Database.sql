SHOW DATABASES;

## CREATING the Attending Clocking Machine DATABASE
CREATE DATABASE ACM_Database;
USE ACM_Database;

## CREATING THE TABLES NEEDED IN THE DATABASE
## STAFF TABLE
CREATE TABLE Staff(
	StaffID VARCHAR(10) UNIQUE,
    StaffSurname VARCHAR(15),
    StaffOtherNames VARCHAR(30),
    StaffAge INTEGER,
    StaffDesignation VARCHAR(20),
    PRIMARY KEY(StaffID)
);
## DEPARTMENT TABLE
CREATE TABLE Department(
	DeptID VARCHAR(20) UNIQUE,
    DeptName VARCHAR(25) UNIQUE,
    DeptFunction VARCHAR(100),
    PRIMARY KEY(DeptID)
);

## ATTENDANCE TABLE
CREATE TABLE Attendance(
	StaffID VARCHAR(10),
    DeptID VARCHAR(10),
    DateClocked DATE,
    TimeClocked TIME
);

## INSERTING DATA INTO THE TABLES
## STAFF TABLE
DESCRIBE Staff;
INSERT INTO Staff
VALUES  ('STF301','Adeshola','Emmanuel Damilare', 29, 'Maintenance Engineer'),
('STF302','Sadik','Olayemi Abdulroshid', 56, 'HRM'),
('STF303','Babawale','Sodiq Damilola', 59, 'Marketing Analyst'),
('STF304','Adewale','Ibirogba Ayooluwa', 28, 'Secretary'),
('STF305','Ogundijo','Samuel Ayomide', 35, 'Product Manager');
SELECT * FROM Staff;


## DEPARTMENT TABLE
DESCRIBE Department;
INSERT INTO Department
VALUES ('DPT007', 'Maintenance Workshop','Ensure optimal asset reliability and performnace'),
('DPT012','Human Resourses', 'Maximize employee productivity and protects the company'),
('DPT063','Marketing', 'Coordinates and produces all materials representing the business'),
('DPT034', 'Accounting and Finance','Tracks and account for cash payments by customers'),
('DPT085', 'R&D','Oversee the innovation and introduction of new products and services');
SELECT * FROM Department;

## ATTENDANCE TABLE
DESCRIBE Attendance;
INSERT INTO Attendance
VALUES  ('STF301','DPT007','2019-09-13','8:00'), ('STF302','DPT012','2019-09-13','8:10'),
('STF303','DPT063','2019-09-13','9:03'), ('STF304','DPT034','2019-09-13','8:56'),
('STF305','DPT085','2019-09-13','8:00'), ('STF304','DPT034','2019-09-14','8:06'),
('STF301','DPT007','2019-09-14','8:05'), ('STF302','DPT012','2019-09-14','9:10'),
('STF303','DPT063','2019-09-14','8:00'), ('STF301','DPT007','2019-10-21','8:00'),
('STF302','DPT012','2019-10-21','7:50'), ('STF303','DPT063','2019-10-21','7:53'),
('STF304','DPT034','2019-10-21','8:00'), ('STF305','DPT085','2019-10-21','8:09'),
('STF305','DPT085','2019-10-14','9:00');
SELECT * FROM Attendance;


## GENERATING REPORT FROM THE DATABASE
## A. LIST OF ALL STAFFS AND THEIR DEPARTMENTS
SELECT DISTINCT s.StaffID, s.StaffSurname, s.StaffOtherNames, d.DeptName
FROM Staff as s INNER JOIN Attendance as a 
ON s.StaffID = a.StaffID
INNER JOIN Department as d
ON a.DeptID = d.DeptID;

## B. LIST OF STAFF NAMES (AND THEIR DEPARTMENT) THAT RESUME AT EXACTLY 8.00 ON 21/10/2019
SELECT a.StaffID, s.StaffSurname, s.StaffOtherNames, d.DeptName, a.DateClocked, a.TimeClocked
FROM Staff AS s INNER JOIN Attendance as a
ON s.StaffID = a.StaffID
INNER JOIN Department as d
ON a.DeptID = d.DeptID
WHERE a.DateClocked = '2019-10-21' and a.TimeClocked = '8:00';

## C. LIST OF ALL STAFF NAMES WHOSE AGE IS 55 YEARS AND ABOVE AND RESUME BEFORE 8.00 ON 21/10/2019
SELECT s.StaffID, s.StaffSurname, s.StaffOtherNames, s.StaffAge,a.DateClocked, a.TimeClocked, d.DeptName
FROM Staff as s INNER JOIN Attendance as a
ON s.StaffID = a.StaffID
INNER JOIN Department as d
ON a.DeptID = d.DeptID
WHERE a.DateClocked = '2019-10-21' and a.TimeClocked < '8:00' and s.StaffAge >= 55;
Describe Attendance;