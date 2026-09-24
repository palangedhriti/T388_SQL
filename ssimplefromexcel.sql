SELECT * FROM ssimple;
select * from ssimple where fullname like "A%"; 
select * from ssimple where fullname like "_U%"; 
select * from ssimple where fullname like "%T%";
select * from ssimple where fullname like "A__%";
select * from ssimple where fullname like "A%T";

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
