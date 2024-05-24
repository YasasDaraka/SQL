SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS dbName;

USE dbName;

CREATE TABLE tbName(
	column1 VARCHAR(45),
	column2 int
);

DESC tbName;

INSERT INTO tbName (column2,column1)
	VALUES(1,'value01'),(2,'value02'),(2,null);
	
INSERT INTO tbName VALUES('value03',3),('value04',4);

SELECT * FROM tbName;

TRUNCATE TABLE tbName;
DESC tbName;

DROP TABLE tbName;

DROP DATABASE IF EXISTS dbName;

