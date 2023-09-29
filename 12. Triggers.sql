use hello;

create table emp (Emp_id int, Emp_Name varchar(10), Working_hrs int);

desc emp;

Select * from emp;
insert into emp values (6, "raju", 12);
insert into emp values (6, "rakesh", -13);

###			if new.working_hrs <0 then
###			set new.working_hrs = - new.working_hrs;
###			end if;



Drop table books;
Drop table book_sales;

create table books(
booksid integer primary key, 
Title varchar(70), 
Authorid int
);

insert into Books values(1, "Harry Potter and the philosophers stone",1);
insert into Books values(2, "Harry Potter and the Chambers of Secrets",1);
insert into Books values(3, "harry Potter and the half blood prince",1);
insert into Books values(4, "Harry Potter and the goblet of fire",1);
insert into Books values(5, "Night Without End", 5);
insert into Books values(6, "Where Eagles Dare", 5);
insert into Books values(7, "Fear is the key",5);
insert into Books values(8, "Sense and Sensibility",6);
insert into Books values(9, "Pride and Prejudice",6);
insert into Books values(10,"Emma",6);
insert into Books values(11, "Five Point Someone",7);
insert into Books values(12, "Two States",7);
insert into Books values(13, "Salome", 8);
insert into Books values(14, "The Happy Prince",8);


alter table books
add column sales int default 0;

create table book_sales(
sale_id integer primary key auto_increment, 
booksid int, 
Title varchar(70), 
qty_sold int,
tos datetime
);

select * from books;
desc book_sales;

desc books;

select * from book_sales;

update books 
set sales = sales +2
where booksid =3;

delete from books where booksid =5;

insert into book_sales (booksid, title, qty_sold,tos) values (5, "   ", 5, now());

















use excelr_session;
select * from emp;
desc emp;

insert into emp values (4, "steve", -18);



####################################################################      END         ########################################################################


####### inside the trigger
## declare qty int;
## set qty = new.sales - old.sales;

## insert into book_sales (booksid, title, qty_sold,tos) values (old.booksid, old.title, qty, now());








