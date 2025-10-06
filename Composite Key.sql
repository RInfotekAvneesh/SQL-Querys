--Composite Key
create table EmployeeTbl1(emp_id int not null,
dept_id int not null,
emp_name varchar(50),
emp_gender varchar(50),
emp_salary int,
dept_name varchar(50),
dept_head varchar(50),
dept_location varchar(50),
primary key(emp_id,dept_id));
select * from EmployeeTbl1;
insert into EmployeeTbl1 values(1,1,'Avneesh','Male',30000,'IT','AMOl','Mumbai');
insert into EmployeeTbl1 values(2,2,'Ankit','Male',32000,'HR','Baby','Pune');
insert into EmployeeTbl1 values(3,1,'Sony','Female',33000,'Sales','Saurabh','Delhi');
insert into EmployeeTbl1 values(4,2,'Dori Lal','Male',34000,'IT','Avneesh','Mumbai');
insert into EmployeeTbl1 values(5,1,'Ram Sir','Male',70000,'IT','AMOl','Mumbai');
insert into EmployeeTbl1 values(5,3,'Ram ji','Male',80000,'IT','Ramesh','Mumbai');



