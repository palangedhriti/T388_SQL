-- 6 PRACT--
-- auto increment--
-- math function--
select exp(2);
select power(2,6);
select * ,sqrt(salary)from employee; 
-- string --
-- concat--
select concat("good"," ","mornig");
SELECT CONCAT('good', ' ', 'mornig') AS Remarks;
select concat(fullname,"-",department)from employee;
select *,concat(fullname,"-",department) as code from employee;
select *,concat(fullname,"itvedant.com") as email from employee;

-- lower and upper--
select *,lower(fullname)as newname,upper(fullname) as CAPITALNAME from employee;
select *from employee;
alter table employee modify Email varchar(50);
update employee set Email = concat(fullname,"@gmail.com");
select fullname,email from employee;

-- replace --
select replace ("Hello Everyone,GoodNIght","Night","Morning") as statement;
select fullname, replace(fullname,"Jones","Patil") as changed from employee;
select fullname ,replace (fullname,"Jones","Patil")as chnaged,reverse(fullname) from employee;
select salary,length(salary) from employee;
select fullname,length(fullname),salary,length(salary) from employee;
-- replace--
select substring("Maharastra",1,3);
select substring("Maharastra",5,3);

select fullname ,length(fullname),ltrim(fullname),length(ltrim(fullname)) as LTRIM from Book1;
select fullname ,length(fullname),rtrim(fullname),length(rtrim(fullname)) as RTRIM from Book1;
select fullname , trim(fullname) as trim_together from Book1;

select fullname ,length(fullname) as Actual_length,
ltrim(fullname)as LeftTrim,length(ltrim(fullname)) as LTRIM_length,
rtrim(fullname)as RightTrim,length(rtrim(fullname)) as RTRIM_length,
trim(fullname)as Both_Sides_Trim ,length(trim(fullname))as All_trim_length
from Book1; 

-- sub querry --
select * from employee;

select age from employee where employeeid=1002;

SELECT age, COUNT(*) AS age
FROM employee
WHERE age = (SELECT age FROM employee WHERE customer_id = 1002); 

select * from employee 
where age =(select age from employee where employeeid=1002);


select * from employee 
where salary  =(select salary from employee where fullname='John Doe'); -- single row subquery--

select * from employee 
where department  =(select department from employee where fullname='John Doe');
select max(salary) from employee;

select max(salary) from employee where salary <(select max(salary) from employee);-- to show 2nd highest slary--
select max(salary) from employee  where salary <(select max(salary) from employee where salary <(select max(salary) from employee));

SELECT ROUND(123.4567, 2);
SELECT MIN(salary) FROM employee;
select max(age) from employee where age>( select max(age) from employee where age<( select max(age) from employee where age));

select*from employee;

-- multiple row subquery --
select * from employee;
use t388;
select age from employee where employeeid in(1002,1003);
select * from employee
where AGE IN(select age from employee where employeeid in(1002,1003));

select * from employee
where LOCATION IN (select LOCATION from employee where EMPLOYEEID in(1001,1002));
select LOCATION from employee where EMPLOYEEID in(1001);

-- MULTIPLE SUBQUERRY--

-- QUERTY IWTH'ANY'--
SELECT DISTINCT SALARY FROM EMPLOYEE;
SELECT * FROM EMPLOYEE
WHERE SALARY > ANY (select salary from employee where EMPLOYEEID BETWEEN 1001 AND 1003);
select *from employee
WHERE SALARY < ANY (select salary from employee where EMPLOYEEID BETWEEN 1001 AND 1003);

-- querry with 'all'--
select *from employee
WHERE SALARY > All (select salary from employee where EMPLOYEEID BETWEEN 1001 AND 1003);
select *from employee
WHERE SALARY < All (select salary from employee where EMPLOYEEID BETWEEN 1003 AND 1005);
select *from employee
WHERE SALARY < All (select salary from employee where EMPLOYEEId in ( 1003, 1005)); -- in-- 
select *from employee
WHERE SALARY < All (select salary from employee where EMPLOYEEId in ( 1001, 1003));


-- joins --
select*from salary ;
select *from namee;
-- INNER JOIN --
select namee.ID, salary  FROM namee inner join Salary on namee.ID = Salary.ID;

-- LEFT JOIN--
select namee.ID ,NAME,salary from namee left join salary on salary.ID = namee.ID;

-- right join --
select salary.ID ,NAME,salary from namee  right join salary on salary.ID = namee.ID;


-- OUTER JOIN --
USE T388;
SELECT * FROM namee;
SELECT * FROM salary;

select n.id as name_id,s.id as salary_id,name,salary
from namee as n 
left join
salary as s 
on s.id = n.id
union
select n.id as name_id,s.id as salary_id, NAME,salary 
from namee as n 
right join 
salary as s 
on s.id=n.id;

-- 10th pract--
-- FORIGIN KEY --

create database FK_T388;
USE FK_T388;
 CREATE TABLE students  
(ID int primary key auto_increment,
NAME varchar(20));
insert into students values 
(1,"Kunal");

desc students;
select *from students;
insert into students(name)values
("Suman");
delete from students where id=2;

create table info
(ID INT,
SCORE INT);
DROP table info;
create table info
(ID INT,
SCORE INT,
foreign key(ID) references students(ID));
insert into info values (1,300);
select*from info;

