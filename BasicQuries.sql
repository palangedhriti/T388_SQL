use t388;
show tables;
select * from employee;
SHOW DATABASES; 
select * from employee order by EmployeeId;
select * from employee where gender ="male" order by fullname;
select * from employee limit 5;
-- W H G O--CLAUSES
-- WHERE, GROUP BY [-HAVING], ORDER BY
Select department, count(EmployeeId) from 
employee group by department;
Select gender, count(EmployeeId) from employee
group by gender;
Select department, sum(salary) from employee 
group by department;
select department , avg(salary)from employee
group by department;
Select department, avg(salary), sum(salary) from employee group by department;
select avg(salary) from employee;


-- having clause(along with Group By Clause)
select Department, count(*) from employee
 group by department having sum(salary)>50000; 

select Department, avg(age),count(*) from employee 
group by department having avg(age) <27;

select * from employee;
select Department, count(*) , sum(salary) from
employee group by department;
