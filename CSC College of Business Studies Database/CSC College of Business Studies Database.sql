SHOW DATABASES;

## Creating the CSC College of Business Studies Database
CREATE DATABASE CSC_CollegeDatabase;
USE CSC_CollegeDatabase;

## Creating the tables needed in the dataframe
CREATE TABLE StudentInfo(
	MatricNo INTEGER UNIQUE NOT NULL,
    Lastname VARCHAR(15),
    Firstname VARCHAR(15),
    Age INTEGER,
    Gender VARCHAR(1),
    CurrentLevel INTEGER,
    StateOfOrigin VARCHAR(10),
    MobileNo VARCHAR(11) UNIQUE,
    EMail VARCHAR(25),
    EntrySession VARCHAR(11),
    PRIMARY KEY(MatricNo)
);

CREATE TABLE FirstYearResults(
	MatricNo INTEGER UNIQUE, FirstSession VARCHAR(11),
    MAT111 INTEGER, MAT121 INTEGER, MAT141 INTEGER,
    GES101 INTEGER, STA114 INTEGER, CSC101 INTEGER
);
CREATE TABLE SecondYearResults(
	MatricNo INTEGER UNIQUE, SecondSession VARCHAR(11),
    CSC201 INTEGER, CSC231 INTEGER, MAT213 INTEGER,
    GES201 INTEGER, STA204 INTEGER, CSC223 INTEGER
);

CREATE TABLE ThirdYearResults(
	MatricNo INTEGER UNIQUE, ThirdSession VARCHAR(11),
    CSC331 INTEGER, CSC332 INTEGER, CSC333 INTEGER,
    GES301 INTEGER, STA304 INTEGER, MAT341 INTEGER
);

## Inserting values into the different tables
INSERT INTO StudentInfo
VALUES (206721, 'Adeokun','Obisesan', 18, 'F', 100, 'Lagos',09131971368,'Adeokun@example.com','2020/2021'),
(201238, 'Ogunade','Isreal', 18, 'M',100,'Lagos',0815641318,'Ogunade@example.com','2020/2021'),
(203674, 'Oloyede','Emmanuel', 22, 'F',100,'Oyo',08031567855,'Oloyede@example.com','2020/2021'),
(234567, 'Adekunle','Sadiq', 21, 'M',100,'Osun',09099831235,'Adekunle@example.com','2020/2021'),
(200087, 'Bashorun','Shina', 25, 'F',100,'Oyo',08132345135,'Bashorun@example.com','2020/2021'),
(205621, 'Adewale','Obisesan', 20, 'M', 100,'Lagos',08132561368,'Adewale@example.com','2020/2021'),
(205688, 'Ogundiran','Isreal', 21, 'M',200,'Ondo',08033541318,'Ogundiran@example.com','2019/2020'),
(205921, 'Obianke','Emmanuel', 24, 'F',200,'Oyo',08033232455,'Obianke@example.com','2019/2020'),
(212256, 'Adeshola','Saheed', 23, 'M',200,'Osun',09033231235,'Adeshola@example.com','2019/2020'),
(208179, 'Babawale','Sodiq', 22, 'M',200,'Oyo',08137654235,'Babawale@example.com','2019/2020'),
(208180, 'Badmus','Habeeb', 23, 'M',200,'Ogun',08034010667,'Babawale@example.com','2019/2020'),
(215562, 'Ibirogba','Adesanya', 25, 'F',200,'Kano',09035089767,'Ibirogba@example.com','2019/2020'),
(207982, 'Ogunshina','Micheal', 21, 'M',300,'Kaduna',09134000689,'Ogunshina@example.com','2018/2019'),
(204567, 'Udoka','Ukechukwu', 22, 'F',300,'Abia',08048412678,'Udoka@example.com','2018/2019'),
(209876, 'Kasali','Habeeb', 24, 'M',300, 'Osun',08134356879,'Kasali@example.com','2018/2019'),
(203456, 'Balogun','Abdulmumin', 20,'M', 300, 'Lagos',09034012345,'Balogun@example.com','2018/2019'),
(207891, 'Ibikunle','Sunday', 23, 'F',300,'Ondo',08198765432,'Ibikunle@example.com','2018/2019'),
(212344, 'Tanmola','Oyewale', 26, 'F',300, 'Osun',09087657845,'Tanmola@example.com','2018/2019'),
(218222, 'Danjuma','Faith', 23,'F', 300, 'Kogi',08126799086,'Eribo@example.com','2018/2019'),
(214552, 'Babatunde','Afeez', 24, 'M', 300,'Kastina',09186547098,'Babatunde@example.com','2018/2019');

INSERT INTO FirstYearResults
VALUES (206721, '2020/2021', 67, 69 , 70, 88, 60, 91),(201238, '2020/2021', 45, 52 , 70, 48, 70, 61),
(203674, '2020/2021', 77, 79 , 79, 88, 80, 96), (234567,'2020/2021', 67, 69 , 60, 68, 70, 70),
(200087, '2020/2021', 87, 89 , 80, 88, 90, 81), (205621, '2020/2021', 57, 59 , 50, 48, 48, 71),
(205688,'2019/2020', 61, 64 , 75, 81, 70, 77),(205921, '2019/2020', 57, 59 , 70, 98, 80, 51),
(212256, '2019/2020', 65, 65 , 75, 86, 69, 81),(208179, '2019/2020', 86, 87 , 73, 69, 78, 81),
(208180, '2019/2020', 85, 73 , 81, 81, 82, 68),(215562,'2019/2020', 97, 99 , 90, 98, 90, 98),
(207982, '2018/2019', 87, 69 , 70, 88, 50, 81),(204567, '2018/2019', 69, 69 , 70, 58, 45, 61),
(209876,  '2018/2019', 67, 69 , 60, 68, 60, 61),(203456, '2018/2019', 97, 91 , 80, 88, 87, 95),
(207891,  '2018/2019', 56, 69 , 70, 88, 70, 84),(212344, '2018/2019', 66, 49 , 70, 48, 50, 49),
(218222,  '2018/2019', 98, 69 , 70, 88, 50, 99),(214552,  '2018/2019', 98, 79 , 80, 78, 90, 90);

INSERT INTO SecondYearResults
VALUES (205688,'2020/2021', 61, 64 , 75, 81, 70, 77),(205921, '2020/2021', 57, 59 , 70, 98, 80, 51),
(212256, '2020/2021', 65, 65 , 75, 86, 69, 81),(208179,'2020/2021', 86, 87 , 73, 69, 78, 81),
(208180, '2020/2021', 85, 73 , 81, 81, 82, 68),(215562,'2020/2021', 97, 99 , 90, 98, 90, 98),
(207982, '2019/2020', 87, 69 , 70, 88, 50, 81),(204567,'2019/2020', 69, 69 , 70, 58, 45, 61),
(209876,  '2019/2020', 67, 69 , 60, 68, 60, 61),(203456, '2019/2020', 97, 91 , 80, 88, 87, 95),
(207891,  '2019/2020', 56, 69 , 70, 88, 70, 84),(212344, '2019/2020', 66, 49 , 70, 48, 50, 49),
(218222,  '2019/2020', 98, 69 , 70, 88, 50, 99),(214552,  '2019/2020', 98, 79 , 80, 78, 90, 90);

INSERT INTO ThirdYearResults
VALUES (207982, '2020/2021', 67, 79 , 50, 58, 50, 71),(204567, '2020/2021', 59, 59 , 70, 58, 45, 51),
(209876,  '2020/2021', 87, 79 , 70, 88, 70, 69),(203456, '2020/2021', 77, 71 , 60, 68, 77, 75),
(207891,  '2020/2021', 66, 69 , 60, 88, 70,74),(212344, '2020/2021', 76, 59 , 90, 68, 60, 79),
(218222,  '2020/2021', 92, 69 , 70, 88, 50, 99),(214552, '2020/2021', 92, 79 , 80, 78, 90, 90);

### I. LIST OF STUDENTS' MATRICULATION NUMBERS, NAMES, MOBILE PHONE NUMBERS AND EMAIL ADDRESSES IN COLLEGE
SELECT MatricNo, LastName, FirstName , MobileNo, EMail 
FROM StudentInfo;

## II. LIST OF MATRICULATION NUMBERS AND NAMES OF STUDENTS WHO ARE 16-20 AGE BRACKET AND THEIR STATE OF ORIGIN IS LAGOS
SELECT MatricNo, LastName, FirstName
FROM StudentInfo
WHERE Age >= 16 and Age <= 20 and StateOfOrigin = 'Lagos';

## III. THE MEAN SCORE OF ALL STUDENTS IN CSC 331 COURSE FOR 2020/2021 SESSION
SELECT AVG(CSC331) AS AverageScore
FROM ThirdYearResults;

## IV. THE MATRIC NUMBER AND NAME OF STUDENT(S) THAT HAS THE HIGHEST SCORE IN CSC331 IN 2020/2021 SESSION
SELECT s.MatricNo, s.FirstName, s.LastName
FROM ThirdYearResults AS r INNER JOIN StudentInfo as s
ON r.MatricNo = s.MatricNo
WHERE r.CSC331 = (SELECT MAX(CSC331) FROM ThirdYearResults);

##V. THE LIST OF ALL COURSES AND SCORES OF A PARTICULAR STUDENT IN 2020/2021 SESSION
SELECT *
FROM ThirdYearResults
WHERE MatricNo = 214552;