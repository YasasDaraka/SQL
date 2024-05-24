CREATE DATABASE IF NOT EXISTS dbTest;
USE dbTest;

CREATE TABLE IF NOT EXISTS customer(
		id VARCHAR(45),
		name VARCHAR(45),
		adress TEXT,
		salary DOUBLE,
		CONSTRAINT PRIMARY KEY(id)
		);

DESC customer;

INSERT INTO customer VALUES('C-1','Nihal','colombo',50000),		
							('C-2','Amal','galle',45000),
							('C-3','kamal','mathara',25000),
							('C-4','sadun','jafna',75000),
							('C-5','john','colombo',90000);

SELECT*FROM customer;
SELECT id FROM customer;
SELECT id As 'customer id' FROM customer;
SELECT salary*2 FROM customer;

--=====================WHERE================================
SELECT * FROM customer WHERE adress='colombo';

SELECT * FROM customer WHERE adress='colombo' AND salary>75000;
SELECT * FROM customer WHERE adress='colombo' && salary>75000;

SELECT * FROM customer WHERE adress='colombo' OR salary>50000;
SELECT * FROM customer WHERE adress='colombo' || salary>50000;

SELECT * FROM customer WHERE salary>=50000 AND salary<=100000 ;
SELECT * FROM customer WHERE salary BETWEEN 50000 AND 100000;

SELECT * FROM customer WHERE name LIKE '%a';
SELECT * FROM customer WHERE name LIKE 'a%';
SELECT * FROM customer WHERE name LIKE '%a%';
SELECT * FROM customer WHERE salary LIKE '%5%';

SELECT * FROM customer WHERE name IN ('john');
SELECT * FROM customer WHERE name NOT IN ('john');

--=====================LIMIT================================
SELECT * FROM customer LIMIT 3;

SELECT * FROM customer LIMIT 3 OFFSET 2;

--=====================ORDER BY=============================
SELECT * FROM customer ORDER BY id DESC;
SELECT * FROM customer ORDER BY id ASC;

----select last saved VALUE
SELECT * FROM customer ORDER BY id DESC LIMIT 1;





DROP DATABASE IF EXISTS dbTest;