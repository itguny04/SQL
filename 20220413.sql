CREATE TABLE student (
	SC_NAME VARCHAR(50) NOT NULL,
	ST_NUMBER NUMBER(7) PRIMARY KEY,
	ST_NAME VARCHAR(10) NOT NULL,
	ST_MAJOR VARCHAR(30) CHECK(ST_MAJOR IN ('computer', 'network', 'ai', 'software')),
	ST_AGE INT CHECK(ST_AGE < 100),
	ST_GENDER VARCHAR(1) CHECK(ST_GENDER IN ('M','F'))
);

INSERT INTO student VALUES ("SNU", 2000001, "kgh", "computer", 20, "M");
INSERT INTO student VALUES ("KAIST", 2000002, "bhj", "ai", 19, "F");
INSERT INTO student VALUES ("HAVARD", 2000003, "lhj", "computer", 21, "M");
INSERT INTO student VALUES ("UNIST", 2000004, "jsj", "software", 28, "F");
INSERT INTO student VALUES ("KAIST", 2000005, "jhs", "network", 20, "F");

INSERT INTO student VALUES ("HAVARD", 2000006, "ksj", "ai", 20, "F");
INSERT INTO student VALUES ("SNU", 2000007, "kkh", "software", 20, "M");
INSERT INTO student VALUES ("SNU", 2000008, "khh", "network", 21, "F");
INSERT INTO student VALUES ("GIST", 2000009, "lsm", "computer", 20, "M");
INSERT INTO student VALUES ("GIST", 2000010, "jsh", "computer", 20, "M");


SELECT SC_NAME AS SCHOOL, COUNT(SC_NAME) AS STUDENTS  FROM student  GROUP BY SC_NAME;
SELECT ST_MAJOR AS MAJOR, COUNT(ST_MAJOR) AS STUDENTS  FROM student  GROUP BY ST_MAJOR HAVING ST_MAJOR != "network";
SELECT MIN(ST_AGE) FROM student;