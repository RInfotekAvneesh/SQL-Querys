use AvneeshDB;
create table Employee(Emp_Id int,Emp_Name Varchar(50),Gender Varchar(30),Salary Varchar(30), City Varchar(80));
insert into Employee values(2,'Avneesh Kumar','Male',20000,'Atodhya');
select * from Employee;
insert into Employee values(3,'Ankit Kumar','Male',40000,'Gonda');
insert into Employee values(4,'Baby','Female',32000,'Basti');
insert into Employee values(5,'Abhinav Kuame','Male',42000,'Lucknow');
select * from Employee;
create procedure spGetEmployee
as
begin
select Emp_Name,Gender from Employee;
end
spGetEmployee;
execute spGetEmployee
create procedure spGetEmployeeById
@id int 
as 
begin
select * from Employee where Emp_Id=@id 
end
execute spGetEmployeeById 4;


create procedure spGetEmployeeByIdAndByName
@id int,
@Name varchar(50)
as
begin
select * from Employee where Emp_Id=@id and Emp_Name=@Name;
end;
 execute spGetEmployeeByIdAndByName 2,'Avneesh Kumar';

 
 alter procedure spGetEmployeeByIdAndByName
@id int,
@Name varchar(50)
with encryption
as
begin
select Emp_Name,Salary from Employee where 
Emp_Id=@id
and
Emp_Name=@Name;
end;

 execute spGetEmployeeByIdAndByName 2,'Avneesh Kumar';

 sp_helptext spGetEmployeeByIdAndByName;

 drop procedure spGetEmployeeByIdAndByName;


 create proc spGetEmployeeByGender
 @Gender varchar(50),
 @EmployeeCout int Output
 as 
 begin
 select @EmployeeCout=Count(Emp_Id) from Employee
 where Gender=@Gender
 end

 Declare @TotalEmployee int
 execute spGetEmployeeByGender 'Female',@TotalEmployee output 
 select @TotalEmployee
 select * from Employee


-- triggers--
create table StudentTable(Std_Id int primary key identity,Std_Name varchar(50),
Gender varchar(30),Std_class int,Fees Varchar(30))
select * from StudentTable
insert into StudentTable values('Ajay','Male',7,3000);
insert into StudentTable values('Baby','Female',10,5000);
insert into StudentTable values('Anjani','Female',4,7000);
insert into StudentTable values('Abhi','Male',1,2000);
insert into StudentTable values('Sony','Female',10,4500);
insert into StudentTable values('Sony','Female',4,3000);
insert into StudentTable values('Sunil','Male',11,8000);
insert into StudentTable values('Sanjay','Male',12,12000);
insert into StudentTable values('Ashok','Male',8,12000);
insert into StudentTable values('Arpit','Male',7,3000);
insert into StudentTable values('Abhinav','Male',12,12000);
insert into StudentTable values('Sonu','Male',8,12000);
insert into StudentTable values('Surya','Male',7,3000)
insert into StudentTable values('Surya','Male',7,3000)
insert into StudentTable values('Sushila','Female',9,3500)
insert into StudentTable values('Seema','Female',12,5500)
select * from StudentTable

create trigger tr_Student_forinsert on StudentTable
after insert
as
begin
print'Someting Happen';
end

--Insert Triger--
alter trigger tr_Student_forinsert on StudentTable
after insert
as
begin
select * from inserted;
end
--Delete Trigger--
create trigger tr_Student_forDelete on StudentTable
after delete
as
begin
select * from deleted;
end
select * from StudentTable
delete from StudentTable where Std_Id=13;
delete from StudentTable where Std_Id=14;
delete from StudentTable where Std_Id=15;
select * from StudentTable


create table Student_Audit_Table(Audit_Id int primary key identity,Audit_Info varchar(max))
select * from Student_Audit_Table
alter trigger tr_Student_Audit_forinsert on StudentTable
after insert
as
begin
Declare @id int,@name varchar
select @id=Std_Id,@name=Std_Name from inserted;
insert into Student_Audit_Table
values('Student with id '+Cast(@id as varchar(50))+'Name is'+@name+'is added at'+Cast(GETDATE() as varchar(50)));
end
select * from Student_Audit_Table
select * from StudentTable