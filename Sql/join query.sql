-- joins used to display two or table data
create database mysql1;

use mysql1;

create table employpee(
emp_id int primary key,
emp_name varchar(50) not null,
salaray float default 0
);

create table department(
dep_id int primary key,
dep_name varchar(50),
emp_id int,
foreign key department(emp_id) references employpee(emp_id)
);

describe employpee;
describe department;
insert into employpee values
(101,"Xyz",15000),
(102,"abc",14000),
(103,"pqr",18000),
(104,"efg",20000);

insert into department values
(1,"HR",101),
(2,"Marketing"102),
(3,"finance",103),
(4,"technical",101);

insert into department (dep_id,dep_name) values
(5,"account");
select *from employpee;
select *from department;

-- alias
select emp_id as employpee_id from employpee;

-- inner join: display matching data

select employpee.emp_id,employpee.emp_name,employpee.salary,
department.dep_name from employpee inner join department on employpee.emp_id=department.emp_id;

-- with alias
select e.emp_id, e.emp_name,e.salary,d.dep_name from
emloypee as e inner join department as d e.emp_id=d.emp_id;

-- left join: display all data from left table and matching data from 
select e.emp_id, e.emp_name,e.salary,d.dep_name from
emloypee as e left join department as d e.emp_id=d.emp_id;

-- right join : display all data from right table and matching data from 
select e.emp_id, e.emp_name,e.salary,d.dep_name from
emloypee as e right join department as d e.emp_id=d.emp_id;

-- full join display all data from both tables
select e.emp_id, e.emp_name,e.salary,d.dep_name from
emloypee as e left join department as d e.emp_id=d.emp_id;
union
select e.emp_id, e.emp_name,e.salary,d.dep_name from
emloypee as e right join department as d e.emp_id=d.emp_id;

select *from employpee as e inner join department as d 
on e.emp_id=d.emp_id;
