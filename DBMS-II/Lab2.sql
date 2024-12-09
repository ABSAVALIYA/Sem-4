-- Create Department Table
CREATE TABLE Department (
 DepartmentID INT PRIMARY KEY,
 DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

-- Create Designation Table
CREATE TABLE Designation (
 DesignationID INT PRIMARY KEY,
 DesignationName VARCHAR(100) NOT NULL UNIQUE
);

-- Create Person Table
CREATE TABLE Person (
 PersonID INT PRIMARY KEY IDENTITY(101,1),
 FirstName VARCHAR(100) NOT NULL,
 LastName VARCHAR(100) NOT NULL,
 Salary DECIMAL(8, 2) NOT NULL,
 JoiningDate DATETIME NOT NULL,
 DepartmentID INT NULL,
 DesignationID INT NULL,
 FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
 FOREIGN KEY (DesignationID) REFERENCES Designation(DesignationID)
);

insert into Department values
(1, 'Admin'),
(2, 'IT'),
(3, 'HR'),
(4, 'Account');

select * from Department;

insert into Designation values
(11, 'Jobber'),
(12, 'Welder'),
(13, 'Clerk'),
(14, 'Manager'),
(15, 'CEO');

select * from Designation;

insert into Person (PersonID, FirstName, LastName, Salary, JoiningDate, DepartmentID, DesignationID) values
(101, 'Rahul', 'Anshu', 56000, '01-01-1990', 1, 12),
(102, 'Hardik', 'Hinsu', 18000, '09-25-1990', 2, 11),
(103, 'Bhavin', 'Kamani', 25000, '05-14-1991', null, 11),
(104, 'Bhoomi', 'Patel', 39000, '02-20-2014', 1, 13),
(105, 'Rohit', 'Rajgor', 17000, '07-23-1990', 2, 15),
(106, 'Priya', 'Mehta', 25000, '10-18-1990', 2, null),
(107, 'Neha', 'Trivedi', 18000, '02-20-2014', 3, 15);

select * from Person;

--Part – A

--1. Department, Designation & Person Table’s INSERT, UPDATE & DELETE Procedures.
create or alter procedure PR_INSERT_DEPARTMENT
@did int, @dname varchar(100)
as
begin
	insert into Department values
	(@did, @dname)
end

create or alter procedure PR_UPDATE_DEPARTMENT
@did int, @dname varchar(100)
as
begin
	update Department
	set DepartmentName = @dname
	where DepartmentID = @did
end

create or alter procedure PR_DELETE_DEPARTMENT
@did int
as
begin
	delete from Department
	where DepartmentID = @did
end

create or alter procedure PR_INSERT_DESIGNATION
@did int, @dname varchar(100)
as
begin
	insert into Designation values
	(@did, @dname)
end

create or alter procedure PR_UPDATE_DESIGNATION
@did int, @dname varchar(100)
as
begin
	update Designation
	set DesignationName = @dname
	where DesignationID = @did
end

create or alter procedure PR_DELETE_DESIGNATION
@did int
as
begin
	delete from Designation
	where DesignationID = @did
end

create or alter procedure PR_INSERT_PERSON
@fname varchar(100), @lname varchar(100), @salary decimal(8, 2),
@joiningdate datetime, @deptid int, @desigid int
as
begin
	insert into Person (FirstName, LastName, Salary, JoiningDate, DepartmentID, DesignationID) values
	(@fname, @lname, @salary, @joiningdate, @deptid, @desigid)
end

create or alter procedure PR_UPDATE_PERSON
@pid int, @fname varchar(100), @lname varchar(100), @salary decimal(8, 2),
@joiningdate datetime, @deptid int, @desigid int
as
begin
	update Person
	set FirstName = @fname, LastName = @lname, Salary = @salary,
	JoiningDate = @joiningdate, DepartmentID = @deptid, DesignationID = @desigid
	where PersonID = @pid
end

create or alter procedure PR_DELETE_PERSON
@pid int
as
begin
	delete from Person
	where PersonID = @pid
end

--2. Department, Designation & Person Table’s SELECTBYPRIMARYKEY
create or alter proc PR_SELECTBYPRIMARYKEY_DEPARTMENT
@did int
as 
begin
	select * from Department
	where DepartmentID = @did
end

create or alter proc PR_SELECTBYPRIMARYKEY_DESIGNATION
@did int
as 
begin
	select * from Designation
	where DesignationID = @did
end

create or alter proc PR_SELECTBYPRIMARYKEY_PERSON
@pid int
as 
begin
	select * from Person
	where PersonID = @pid
end

--3. Department, Designation & Person Table’s (If foreign key is available then do write join and take 
--columns on select list)
create or alter proc PR_JOINTABLES
as
begin
	select * from Person
	join Department
	on Person.DepartmentID = Department.DepartmentID
	join Designation
	on Person.DesignationID = Designation.DesignationID
end

--4. Create a Procedure that shows details of the first 3 persons.
create or alter proc PR_FIRST3_DETAILS
as
begin
	select top 3 * from Person
	join Department
	on Person.DepartmentID = Department.DepartmentID
	join Designation
	on Person.DesignationID = Designation.DesignationID
end

pr_first3_details

--Part – B

--5. Create a Procedure that takes the department name as input and returns a table with all workers 
--working in that department.
create or alter proc PR_SELECTBY_DEPTNAME
@dname varchar(100)
as
begin
	select * from Person
	join Department
	on Person.DepartmentID = Department.DepartmentID
	where Department.DepartmentName = @dname
end

PR_SELECTBY_DEPTNAME 'IT'

--6. Create Procedure that takes department name & designation name as input and returns a table with 
--worker’s first name, salary, joining date & department name.
create or alter proc PR_WORKERDETAILS
@deptname varchar(100), @designame varchar(100)
as
begin
	select p.FirstName, p.Salary, p.JoiningDate, d.DepartmentName
	from Person p
	join Department d
	on p.DepartmentID = d.DepartmentID
	join Designation dg
	on p.DesignationID = dg.DesignationID
	where d.DepartmentName = @deptname
	and dg.DesignationName = @designame
end

--7. Create a Procedure that takes the first name as an input parameter and display all the details of the 
--worker with their department & designation name.
create or alter proc PR_WORKERDETAILS2
@fname varchar(100)
as
begin
	select p.FirstName, d.DepartmentName, dg.DesignationName
	from Person p
	join Department d
	on p.DepartmentID = d.DepartmentID
	join Designation dg
	on p.DesignationID = dg.DesignationID
	where p.FirstName = @fname
end

--8. Create Procedure which displays department wise maximum, minimum & total salaries.
create or alter proc PR_SALARYDETAILS
@deptname varchar(100), @designame varchar(100)
as
begin
	select d.DepartmentName, max(p.salary), min(p.salary), sum(p.salary)
	from Person p
	join Department d
	on p.DepartmentID = d.DepartmentID
	group by d.DepartmentName
end

--9. Create Procedure which displays designation wise average & total salaries.
create or alter proc PR_SALARYDETAILS2
@deptname varchar(100), @designame varchar(100)
as
begin
	select dg.DesignationName, avg(p.salary), sum(p.salary)
	from Person p
	join Designation dg
	on p.DesignationID = dg.DesignationID
	group by dg.DesignationName
end

--Part – C
--10. Create Procedure that Accepts Department Name and Returns Person Count.
--11. Create a procedure that takes a salary value as input and returns all workers with a salary greater than 
--input salary value along with their department and designation details.
--12. Create a procedure to find the department(s) with the highest total salary among all departments.
--13. Create a procedure that takes a designation name as input and returns a list of all workers under that 
--designation who joined within the last 10 years, along with their department.
--14. Create a procedure to list the number of workers in each department who do not have a designation 
--assigned.
--15. Create a procedure to retrieve the details of workers in departments where the average salary is above 
--12000.