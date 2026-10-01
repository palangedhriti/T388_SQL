-- NORMLAIZATION -
-- INF 2NF 3NF(TRANSATIVE DEPENDENCY) BCNF --

-- ROW NUMBER --
USE T388;
select*from employee;
-- HERE CUSTOM COLUMLS --
select 
EmployeeId,
FullName,
Department,
Salary,
ROW_NUMBER() OVER (PARTITION BY Department) AS RankInDepartment
from 
employee;

-- HERE ALL THE COLUMNS '*' --
select 
*,
ROW_NUMBER() OVER (PARTITION BY Department) AS RankInDepartment
from 
employee;

select 
FULLNAME ,DEPARTMENT,
ROW_NUMBER() OVER (PARTITION BY Department) AS RankInDepartment
from 
employee ORDER BY DEPARTMENT ASC;

-- RANK PARTITION BY --
select 
FULLNAME ,DEPARTMENT,SALARY,
ROW_NUMBER() OVER (PARTITION BY SALARY) AS RankInDepartment
from 
employee order by SALARY asc;

select 
FULLNAME ,DEPARTMENT,SALARY,
ROW_NUMBER() OVER (PARTITION BY SALARY) AS RankInDepartment
from 
employee order by SALARY asc;

select 
fullname,salary,
rank() OVER (PARTITION BY Department) AS RankInDepartment
from 
employee;

-- ORDER BY--
select 
fullname,salary,
rank() OVER (ORDER BY SALARY) AS RankInDepartment
from 
employee;

-- DENSE RANK--
select 
fullname,DEPARTMENT,salary,
DENSE_rank() OVER (ORDER BY Salary) AS RankInDepartment
from 
employee;

select 
employeeID,
Fullname,
department,
salary,
avg(Salary) over(partition by department) as DepartmentAVGSalary,
sum(Salary) over(partition by department) as DepartmentTotalSalary
from 
employee 
order by 
Department , salary DESC;


select department , sum(salary) as total_salary , avg(salary) AS average_salary from employee group by department;

select 
employeeID,
Fullname,
department,
salary,
avg(Salary) over(partition by department) as DepartmentAVGSalary,
sum(Salary) over(partition by department) as DepartmentTotalSalary
from 
employee 
where gender = "Female"
order by 
Department , salary DESC;

-- LAG --
select 
employeeID,
Fullname,
department,
age,
salary,
LAG(Salary , 1, 0) over (PARTITION BY Department ORDER BY Age ASC) AS PreviousEmployeeSalaryByAge 
from 
employee 
order by 
Department , Age;


select 
employeeID,
Fullname,
department,
age,
salary,
LAG(Salary , 1, 0) over (ORDER BY salary) AS PreviousEmployeeSalaryByAge 
from 
employee 
order by 
Salary;

select 
employeeID,
Fullname,
department,
age,
salary,
LAG(Salary , 1, 0) over (ORDER BY salary) AS PreviousEmployeeSalaryByAge,
(salary -(LAG(Salary , 1, 0) over (ORDER BY salary))) as diff
from 
employee 
order by 
Salary;
select 
employeeID,
Fullname,
department,
age,
salary,
LAG(Salary , 1, 0) over (ORDER BY salary) AS PreviousEmployeeSalaryByAge,
(salary -'PreviousEmployeeSalaryByAge') as diff
from 
employee 
order by 
Salary;

-- LEAD --
select 
employeeID,
Fullname,
department,
age,
salary,
LEAD(Salary , 2, "-") over (ORDER BY salary) AS PreviousEmployeeSalaryByAge,
(salary -'PreviousEmployeeSalaryByAge') as diff
from 
employee 
order by 
Salary;

