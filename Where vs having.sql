DROP DATABASE IF EXISTS WhereVsHaving;
CREATE DATABASE IF NOT EXISTS WhereVsHaving;
USE WhereVsHaving;

CREATE TABLE student(
	IndexNo INT PRIMARY KEY Auto_Increment,
	Name VARCHAR(30),
	Age INT(30)
);

INSERT INTO student VALUES (0,'kamal',17);
INSERT INTO student VALUES (0,'amal',20);
INSERT INTO student VALUES (0,'namal',18);
INSERT INTO student VALUES (0,'wimal',16);
INSERT INTO student VALUES (0,'saman',21);
INSERT INTO student VALUES (0,'sadun',20);
INSERT INTO student VALUES (0,'kamal',22);
INSERT INTO student VALUES (0,'anura',17);
INSERT INTO student VALUES (0,'ranil',16);
INSERT INTO student VALUES (0,'kamala',19);
INSERT INTO student VALUES (0,'wimala',20);

SELECT * FROM Student;

SELECT Name, Age FROM Student 
WHERE Age >18;

SELECT Age, COUNT(IndexNo) FROM Student 
GROUP BY Age HAVING Age >18;