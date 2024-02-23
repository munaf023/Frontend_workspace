-- DML data manipulation language
-- insert, update, delete
create database db_temp;

use db_temp;

create table temp1(
	id int primary key,
    name varchar(25),
    city char(25) not null
);

-- Insert data
insert into temp1
(id,name,city)
values
(101,"abc","amd"),
(102,"xyz","raj"),
(103,"abc","Jam");

-- UPDATE DATA
update temp1
set name = "prq"
where id = 103;

-- DELETE DATA
delete from temp1
where id = 102;

select *from temp1;
