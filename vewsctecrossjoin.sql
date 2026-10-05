-- CROSS JOIN --
create database crossjoin;
use crossjoin;
select * from chess_team_a;
select * from chess_team_b;
select id, team_B_id, A.name ,B.name
from 
chess_team_a as A
cross join
chess_team_B as B;

-- VIEW & CTE --
CREATE VIEW T388_VIEW1 AS 
select id, team_B_id, A.name as name_a ,B.name as name_b
from 
chess_team_a as A
cross join
chess_team_B as B;

select * from T388_VIEW1;

-- CTE --
with t388_CTE as(select id, team_B_id, A.name as name_a ,B.name as name_b
from 
chess_team_a as A
cross join
chess_team_B as B)
select * from t388_CTE;