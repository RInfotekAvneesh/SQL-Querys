create database HRDB;
create table Department(Dept_id int primary key identity(1,1),
Department varchar(50));
create table Employees( Emp_Id int primary key identity(1,1),Emp_Name varchar(200),Age int,
Gender varchar(100),Mobile Varchar(50),Salary int,
Dept_ID int foreign key references Department(Dept_id));

select * from Department
select * from Employees
insert into Department values ('IT');
insert into Department values ('HR');
insert into Department values ('SALES')
insert into Department values ('FINANCE')
insert into Department values ('ACCOUNT')
SELECT * FROM Department

insert into Employees values('Avneesh',31,'Male','9911754491',30000,3)
select * from Employees
use HRDB
