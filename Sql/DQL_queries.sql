use finance;
-- DQL
describe exam1;
describe student1;
-- alias used to give temporary name to the coloumns.
select id as employee_id, name as employee_name from employee;
select * from employee;
select id,name from employee;
-- order by assending
select * from employee
order by name asc;
-- order by desscing
select * from employee
order by name desc;
-- where clause used to filter the data
select * from employee
where salary>15000;
-- is null gives data which are empty.
select * from employee
where salary is null;
-- is not null gives that records which are not empty.
select * from employee
where salary is not null;

-- operators
-- 1)arithmetic (+ - * / %)
-- 2)comparison (<,<=,>,>=,=,!=)
-- 3)logical (AND,OR,LIKE,IN,BETWEEN)

-- AND
select * from employee
where department="Marketing" AND salary>15000;
-- OR
select * from employee
where department="marketing" OR salary>=15000;

-- in
select * from employee
where city in("CTM","nikol");

-- between

select * from employee
where salary between 15000 And 22000;


-- like
select * from employee
where name like "a%";

select * from employee
where name like "%r";

select * from employee
where name like"%_y_ _% r";

-- group by 
select count(id),city
from employee
group by city;

-- having clause used to filter data on group by
select name,sum(salary)
from employee
group by name
having sum(salary)>22000;
