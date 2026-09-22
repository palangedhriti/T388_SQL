use t388;
-- IN , Between and LIKE --
select * from employee where age between 25 and 27;
select * from employee where employeeid between 1003 and 1007;
select * from employee where employeeid in (1003,1005,1007);
select * from employee where employeeid = 1003
or employeeid =1005 
or employeeid =1007;
select * from employee where age in (23,28) and department='IT' and employeeid in (1008,1001);

-- LIKE OPERATOR 22 SEPTEMBER-

-- my prctice--
SELECT* FROM EMPLOYEE WHERE FULLNAME LIKE "M%";
SELECT * FROM EMPLOYEE WHERE FULLNAME LIKE "%Y";
SELECT * FROM EMPLOYEE WHERE FULLNAME LIKE "%Y%";
SELECT * FROM PROJECTS ;
SELECT* FROM PROJECTS WHERE PROJECTNAME  LIKE "%e";
SELECT * FROM EMPLOYEE WHERE FULLNAME LIKE "_a%";
SELECT * FROM EMPLOYEE WHERE FULLNAME LIKE "%a_";

-- class main practice--

-- BUILTIN FUNCTION --
-- AGGRIGATE FUNCTIONS--
select avg(salary) from employee;
select sum(salary) from employee;
select max(salary) from employee; 
select min(salary) from employee; 
select count(*) as total_emp, avg(salary) as Average , sum(salary) as total_salary from employee;

-- MATH FUNCCTION 
SELECT abs(-35);
select abs(35);
select abs(300-800);
select abs(6*(-7));
select (6*(-7));
select datediff(startdate,enddate)from projects;
select abs(datediff(startdate,enddate)) from projects;
select mod(12,7);
select mod(12,3);
-- CELLING AND FLOOR FUNCTION --
select ceil(33.8);
select floor(33.8);
-- in excel .math is used example celling.math--
select exp(2);
select truncate(123456.8765432,3);
select truncate(123456.8765432,0);
select truncate(123456.8765432,-1);
select truncate(123456.8765432,-2);
select truncate(123456.8765432,-3);




