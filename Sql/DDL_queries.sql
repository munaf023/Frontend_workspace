-- DDL-create,alter,drop,truncate
create database friday;
use friday;

create table student(
id varchar(5) primary key,
name text not null,
ph_no int,
Dob date,
pr int check(pr>0)
);

insert into student(id,name,ph_no,Dob,pr)
values ("101","Abc",789456123,"2002-05-04",56);

select *from student;
insert into student(id,name,ph_no,Dob,pr)
values ("102","xyz",7778889990,"2001-04-05",45);


-- DDL-create,alter,drop,truncate
create table emp(
id int primary key,
name text not null,
address varchar(50),
sal int default 0,
age int check(age>18)
);

create table emp1(
id int primary key,
name text not null,
address varchar(50),
sal int default 0,
age int check(age>18)
);

insert into emp(id,name,address,sal,age)
values
(1,"XYZ","naroda",200,20);
select *from emp;

-- 1)rename table name
alter table emp rename to emp_new;
select *from emp_new;

-- 2) To add new column
alter table emp_new
add department varchar(10);

-- 3) to remove column 
alter table emp_new
drop department;

-- 4) to change datatype of column
alter table emp_new
modify name varchar(50);

-- truncate
truncate table emp_new;

-- drop
drop table emp1;
select *from emp1;

show database;


