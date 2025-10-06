create table Customer_tbl(
c_id int primary key,
c_name varchar(50),
c_address varchar(max),
City varchar(50)
);
select * from Customer_tbl
insert into Customer_tbl values(101,'Avneesh','UP','Gonda');
insert into Customer_tbl values(102,'Ankit','Delhi','Uttam Nagar');
insert into Customer_tbl values(103,'Baby','UP','Basti');
insert into Customer_tbl values(104,'Ravi','Haryana','Gurugram');

create table order_tbl(Ord_Id int primary key,
item varchar(50),
Qty int,
Price_of_1 int,
c_id int foreign key references Customer_tbl(c_id));
select * from order_tbl
select * from Customer_tbl
insert into order_tbl values(1000,'USB',3,2000,101);
select * from order_tbl
insert into order_tbl values(1001,'Speaker',3,2000,102);
insert into order_tbl values(1002,'Cable',5,200,103);
insert into order_tbl values(1003,'Charger',3,2000,101);
select * from Customer_tbl

delete from Customer_tbl where c_id=101;
--Primary key can not be null or duplicate
--Forigen key can be duplicate or null
--We can't insert in order tab;e with id thatis not present in customer table
--Syntax
--c_id int foreign key references Customer_tbl(c_id));
--Delete Forigen key
alter table order_tbl drop constraint FK__order_tbl__c_id__04E4BC85;
select * from Customer_tbl;
select * from order_tbl;
insert into order_tbl values(1007,'Charger',3,2000,109);
delete from order_tbl where Ord_Id= 1007;
--creating forigen key in existing table with alter statement 
alter table order_tbl add foreign key (c_id) references Customer_tbl(c_id);
