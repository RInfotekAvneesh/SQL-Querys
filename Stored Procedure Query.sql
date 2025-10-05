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


