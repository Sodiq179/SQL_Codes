## BEFORE INSERT TRIGGER
SHOW DATABASES;

CREATE DATABASE Trigger_db;

USE Trigger_db;

CREATE TABLE Customer_Details(
ID VARCHAR(5) UNIQUE PRIMARY KEY,
Name VARCHAR(30),
Age INTEGER
);

### Creating a trigger that automaticall corrects the age when ever a negative value is supplied

DELIMITER //
CREATE TRIGGER Age_verify
BEFORE INSERT ON Customer_Details
FOR EACH ROW
IF NEW.Age < 0 THEN SET NEW.Age = 0;
END IF;

##### Inserting values into the customer_details table to test the trigger function

INSERT INTO Customer_Details
VALUES ('ID001','Micheal',45),('ID002','Mathew',-25),('ID003','Stephen',15),('ID004','Diana',-35),('ID005','Basit',35),
('ID006','Joshua',65),('ID007','Blessing',-45),('ID008','Odiase',55),('ID009','Dashinger',-43);


SELECT * FROM Customer_Details;