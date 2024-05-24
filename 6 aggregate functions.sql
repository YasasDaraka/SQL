CREATE DATABASE Aggregate_functions;
USE Aggregate_functions;

CREATE TABLE customer(
	CID INT(3)PRIMARY KEY Auto_Increment,
	name VARCHAR(45),
	city VARCHAR(45),
	salary DECIMAL(10,2)
);

INSERT INTO customer VALUES(0,'Nimal','Galle',50000);
INSERT INTO customer VALUES(0,'Kamal','Galle',70000);
INSERT INTO customer VALUES(0,'Amal','Mathara',20000);
INSERT INTO customer VALUES(0,'Namal','Galle',60000);
INSERT INTO customer VALUES(0,'Wial','Mathara',30000);
INSERT INTO customer VALUES(0,'Sadun','Colombo',25000);
INSERT INTO customer VALUES(0,'Akila','Panadura',45000);

SELECT * FROM customer;

SELECT SUM(salary) FROM customer;
SELECT SUM(salary) AS Total_salary FROM customer;

SELECT MAX(salary) FROM customer;

SELECT MIN(salary) FROM customer;

SELECT AVG(salary) FROM customer;

SELECT MIN(salary),MAX(salary),AVG(salary) FROM customer;

SELECT COUNT(city) FROM customer;
SELECT city, COUNT(city) FROM customer;

--===================DISTINCT=======================
SELECT COUNT(DISTINCT city) FROM customer;

--===================GROUP BY=======================
SELECT city, COUNT(city) FROM customer GROUP BY city;

=======================

SELECT DISTINCT city FROM customer;
SELECT city,avg(salary) from customer GROUP BY city;