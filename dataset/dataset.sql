CREATE DATABASE org;
SHOW DATABASES;
USE org;
CREATE TABLE Worker(
   WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   FIRST_NAME CHAR(25),
   LAST_NAME CHAR(25),
   SALARY INT(15),
   JOINING_DATE DATE,
   DEPARTMENT CHAR(25)

);
SHOW TABLES;
INSERT INTO Worker
             (WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) VALUES
             (001, 'Monika', 'Arora',100000, '14-02-24 09.00.00', 'HR'),
			 (002, 'Niharika', 'Verma',80000, '15-03-24 09.00.00', 'Admin'),
             (003, 'Vishal', 'Singh',300000, '14-08-24 09.00.00', 'HR'),
             (004, 'Amitabh', 'Singhal',500000, '14-03-23 09.00.00', 'Admin'),
             (005, 'Vivek', 'Bhati',500000, '14-04-22 09.00.00', 'Admin'),
             (006, 'Vipul', 'Diwan',200000, '17-01-24 09.00.00', 'Account'),
             (007, 'Satish', 'Kumar',75000, '11-01-24 09.00.00', 'Account'),
             (008, 'Ankit', 'Rai',90000, '10-02-21 09.00.00', 'Admin');
SELECT *FROM Worker;
CREATE TABLE Bonus(
       WORKER_REF_ID INT,
       BONUS_AMOUNT INT(10),
       BONUS_DATE DATETIME,
       FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
       
);
SHOW TABLES;
INSERT INTO Bonus (WORKER_REF_ID,BONUS_AMOUNT,BONUS_DATE) VALUES
                     (001, 5000, '14-05-24'),
                     (002, 3000, '15-05-24'),
                     (003, 5000, '14-09-24'),
                     (001, 5000, '14-06-24'),
                     (002, 5000, '15-08-24');
		SELECT * FROM BONUS;
        
        CREATE TABLE Title(
        WORKER_REF_ID INT,
        WORKER_TITLE CHAR(25),
        AFFECTED_FROM DATETIME,
        FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
        
        );
        SHOW TABLES;
        
        INSERT INTO Title (WORKER_REF_ID,WORKER_TITLE,AFFECTED_FROM) VALUES
                       (001,'Manager','2024-03-14  00.00.00'),
                       (002,'Executive','2024-04-15  00.00.00'),
                       (008,'Executive','2021-04-10  00.00.00'),
                       (005,'Manager','2022-07-14  00.00.00'),
                       (004,'Asst. Manager','2023-10-14  00.00.00'),
                       (007,'Executive','2024-02-11  00.00.00'),
                       (006,'Lead','2024-02-17  00.00.00'),
                       (003,'Lead','2024-09-14  00.00.00');
                       SELECT * FROM TITLE;
