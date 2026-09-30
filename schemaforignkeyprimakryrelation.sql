create database T388_FK_PK;
USE T388_FK_PK;
CREATE TABLE Employee (
ID INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Age INT,
Salary DECIMAL(10, 2)
);

CREATE TABLE Project (
ProjectID INT PRIMARY KEY,
ProjectName VARCHAR(100) NOT NULL,
ID INT,
FOREIGN KEY (ID) REFERENCES Employee(ID)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO Employee (ID, Name, Age, Salary) VALUES
(101, 'Alice Smith', 29, 75000.00),
(102, 'Bob Jones', 34, 82000.50),
(103, 'Charlie Brown', 41, 95000.00),
(104, 'Diana Prince', 26, 68000.00);

INSERT INTO Project (ProjectID, ProjectName, ID) VALUES
(1, 'Website Redesign', 101),
(2, 'Cloud Migration', 101),
(3, 'Mobile App Launch', 102),
(4, 'Data Analytics Pipeline', 103);
 
 select * from employee;
 select * from project;
 
 
 update employee set id = 500 where id=101;
 update project set projectname = "hello" where id= 102;
 insert into  EMPLOYEE values (666,'Kamlesh',50000,34);
 
 delete from employee where id = 666;
 
 
 
