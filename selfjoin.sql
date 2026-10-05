-- SELF JOIN --
create database self_T388;
use self_t388;
select * from self;
use self_t388;
select * from self;

 SELECT 
    E.`Employee ID`,
    E.`Employee Name` AS EMPLOYEES,
    M.`Employee Name` AS MANAGER
FROM self AS E
LEFT JOIN self AS M
    ON M.`Employee ID` = E.`Manager ID`;
