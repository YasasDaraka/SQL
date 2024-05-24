CREATE DATABASE IF NOT EXISTS dbTest;
USE dbTest;

CREATE TABLE testTb(
	Batch_No DOUBLE PRIMARY KEY AUTO_INCREMENT,
	salary DECIMAL(10,2) NOT NULL,
	name VARCHAR(45) UNIQUE,
	e_mail VARCHAR(45) DEFAULT 'No_Mail',
	address TEXT,
	age int CHECK(age>=18),
	gender ENUM('male','female'),
	date DATE,
	time TIME,
	bloodGroupe CHAR,
	J_data JSON
);

DESC testTb;

INSERT INTO testTb(Batch_No,salary) VALUES(0,5200);
INSERT INTO testTb VALUES(0,10000,'kamal',' ','galle',19,'male',now(),now(),'A','["Long Description"]');
INSERT INTO testTb VALUES(0,20000,'Nimala','asd@gmail.com','galle',22,'female',now(),now(),'B','["Description2"]');

SELECT * from testTb;


DROP DATABASE IF EXISTS dbTest;
