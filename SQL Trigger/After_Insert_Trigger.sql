### AFTER INSERT TRIGGER
SHOW DATABASES;

CREATE DATABASE Trigger_db;

USE Trigger_db;

CREATE TABLE Customer_Details(
ID VARCHAR(5) UNIQUE PRIMARY KEY,
Name VARCHAR(30),
Age INTEGER
);

CREATE TABLE Message_info(
ID VARCHAR(5),
Message VARCHAR(300)
);

### Creating a trigger that pops out message incase any age instance has a null value

DELIMITER //
CREATE TRIGGER Age_pop
AFTER INSERT ON Customer_Details
FOR EACH ROW
IF NEW.Age = NULL
THEN INSERT INTO Message_info
VALUES (NEW.ID, CONCAT(NEW.Name,' Pls supply your age '));
END IF;

##### Inserting values into the customer_details table to test the trigger function

INSERT INTO Customer_Details
VALUES ('ID001','Micheal',45),('ID002','Mathew',NULL),('ID003','Stephen',15),('ID004','Diana',NULL),('ID005','Basit',35),
('ID006','Joshua',65),('ID007','Blessing',NULL),('ID008','Odiase',55),('ID009','Dashinger',NULL);


SELECT * FROM Customer_Details;
SELECT * FROM Message_info;