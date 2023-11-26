
## DDL Commands - Create 	-	Creates a database and a Table
##				- Rename	-	Rename a table
##				- Drop		-	Drops a table from the database
##				- Truncate	-	Drops a table but the structure prevails
##				- Alter		-	Alters a table
##							Adding, Dropping or Repositioning a Column using alter

##							

## Create Database and a table 

## Syntax - Create database database_name;
##			Create table Table_name (col1_name datatype, col2_name datatype, ....);


Create database Hello;			
use Hello;
Create table mytable(id int, names char(15));
desc mytable;

select * from mytable;

## Rename a table

alter table mytable
rename table mytable to first_table;

select * from first_table;

## 		---------------------------  Alter Command	---------------------------------
##	Adding, Dropping or Repositioning a Column using alter

alter table first_table 
add column marks int;

alter table first_table 
add column Grade int 
after Names;

alter table First_table 
drop column grade;

alter table first_table 
change column marks score int;

desc first_table;
alter table first_table 
modify column score varchar(10);

desc first_table;

select * from first_table;

-- Insert Command

insert into first_table 
(id, name) 
values (1, "Ajay"), 
(2,"vijay"), 
(3, "Sujay");

insert into first_table 
(id, name) 
values 
(4, "Seema"), 
(null,"Rani"), 
(5, "null"), 
(6,null);

insert into first_table 
(id, name) 
values 
(null, null);

-- Update Command

update first_table 
set id = 7 
where name = "bunty";






delete from first_table
where id = 3;



# Null Values

select 2+3;

select 2+3 as Result;
select 2=3 as Result;
select 4>3 as Result;

select 2 = null as result;

select 2 is null as result;

select 2 is not null as result;

update first_table 
set name = "bubli" 
where id is null;


select * from first_table;

delete from first_table where id is null;



select * from first_table;
delete from first_table
where id = 3;

## Truncate	a table
##	truncate table table_name;

truncate table first_table;



## drop a table or a database
## drop table table_name   	drop database database_name
drop table first_table;
drop database Hello;

set sql_safe_updates=0;
