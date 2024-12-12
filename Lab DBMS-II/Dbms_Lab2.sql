USE CSE_4B5_387
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


-- A


--1. Department, Designation & Person Table’s INSERT, UPDATE & DELETE Procedures.
------------DEPERTMENT------------------
--INSERT
CREATE OR ALTER PROCEDURE PR_Department_INSERT
	@DepartmentID INT,
	@DepartmentName VARCHAR(100)
AS
BEGIN
	INSERT INTO Department
	VALUES 
	(@DepartmentID, @DepartmentName)
END

EXEC PR_Department_INSERT 1, 'Admin'
EXEC PR_Department_INSERT 2, 'IT'
EXEC PR_Department_INSERT 3, 'HR'
EXEC PR_Department_INSERT 4, 'Account'
SELECT * FROM Department

--UPDATE
CREATE OR ALTER PROCEDURE PR_Department_Update
	@DepartmentID INT,
	@DepartmentName VARCHAR(100)
AS 
BEGIN
	UPDATE Department
	SET
	DepartmentName = @DepartmentName
	WHERE DepartmentID = @DepartmentID
END
EXEC PR_Department_Update 1, 'Hostel'
EXEC PR_Department_Update 1, 'Admin'

--DELETE
CREATE OR ALTER PROCEDURE PR_Department_Delete
	@DepartmentID INT
AS BEGIN
	DELETE FROM Department
	WHERE DepartmentID = @DepartmentID
END

-------------DESIGNATION-----------------------
--INSERT
CREATE OR ALTER PROCEDURE PR_Designation_Insert
	@DesignationID INT,
	@DesignationName VARCHAR(100)
AS 
BEGIN 
	INSERT INTO Designation
	VALUES
	(@DesignationID, @DesignationName)
END

EXEC PR_Designation_Insert 1, 'Jobber'
EXEC PR_Designation_Insert 12, 'Welder'
EXEC PR_Designation_Insert 13, 'Clerk'
EXEC PR_Designation_Insert 14, 'Manager'
EXEC PR_Designation_Insert 15, 'CEO'
--UPDATE Designation SET DesignationID = 11 WHERE DesignationID = 1

--UPDATE
CREATE OR ALTER PROCEDURE PR_Designation_Update
	@DesignationID INT,
	@DesignationName VARCHAR(100)
AS BEGIN
	UPDATE Designation
	SET
	DesignationName = @DesignationName
	WHERE DesignationID = @DesignationID
END

---DELETE
CREATE OR ALTER PROCEDURE PR_Designation_Delete
	@DesignationID INT
AS BEGIN 
	DELETE FROM Designation
	WHERE DesignationID = @DesignationID
END

SELECT * FROM Designation

--------------------PERSON------------
CREATE OR ALTER PROCEDURE PR_Person_Insert
	@FirstName VARCHAR(100),
	@LastName VARCHAR(100) ,
	@Salary DECIMAL(8, 2) ,
	@JoiningDate DATETIME ,
	@DepartmentID INT ,
	@DesignationID INT 
AS 
BEGIN
	INSERT
	INTO Person
	VALUES
	(@FirstName, @LastName, @Salary, @JoiningDate, @DepartmentID, @DesignationID)
END

EXEC PR_Person_Insert 'Rahul', 'Anshu', 56000, '1990-01-01', 1, 12

EXEC PR_Person_Insert 'Rahul', 'Anshu', 56000, '1990-01-01', 1, 12
EXEC PR_Person_Insert 'Hardik', 'Hinsu', 18000, '1990-09-25', 2, 11
EXEC PR_Person_Insert 'Bhavin', 'Kamani', 25000, '1991-05-14', NULL, 11
EXEC PR_Person_Insert 'Bhoomi', 'Patel', 39000, '2014-02-20', 1, 13
EXEC PR_Person_Insert 'Rohit', 'Rajgor', 17000, '1990-07-23', 2, 15
EXEC PR_Person_Insert 'Priya', 'Mehta', 25000, '1990-10-18', 2, NULL
EXEC PR_Person_Insert 'Neha', 'Trivedi', 18000, '2014-02-20', 3, 15

SELECT * FROM Person

--INSERT
CREATE OR ALTER PROCEDURE PR_Person_Update
	@PersonID INT,
	@FirstName VARCHAR(100),
	@LastName VARCHAR(100) ,
	@Salary DECIMAL(8, 2) ,
	@JoiningDate DATETIME ,
	@DepartmentID INT ,
	@DesignationID INT 
AS 
BEGIN
	UPDATE Person 
	SET
		FirstName = @FirstName,
		LastName = @LastName,
		Salary = @Salary,
		JoiningDate = @JoiningDate,
		DepartmentID = @DepartmentID,
		DesignationID = @DepartmentID
	WHERE PersonID = @PersonID
END

--DELETE
CREATE OR ALTER PROCEDURE PR_Person_Delete
	@PersonID INT
AS
BEGIN
	DELETE FROM Person 
	WHERE PersonID = @PersonID
END

SELECT * FROM Person


--2. Department, Designation & Person Table’s SELECTBYPRIMARYKEY


--3. Department, Designation & Person Table’s (If foreign key is available then do write join and take columns on select list)


--4. Create a Procedure that shows details of the first 3 persons.
CREATE OR ALTER PROCEDURE PR_Top3_Person
AS
BEGIN
	SELECT TOP 3 * 
	FROM Person
END
EXEC PR_Top3_Person
SELECT * FROM PERSON



---B
--5. Create a Procedure that takes the department name as input and returns a table with all workers 
--working in that department.
CREATE OR ALTER PROCEDURE PR_Worker_Of_DeptName
	@DepartmentName VARCHAR(100)
AS 
BEGIN
	SELECT Person.*
	FROM Person JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	WHERE Department.DepartmentName = @DepartmentName
END
EXEC PR_Worker_Of_DeptName 'IT'

--6. Create Procedure that takes department name & designation name as input and returns a table with 
--worker’s first name, salary, joining date & department name.
CREATE OR ALTER PROCEDURE PR_DeptName_DesName
	@DepartmentName VARCHAR(100),
	@DesignationName VARCHAR(100)
AS 
BEGIN
	SELECT 
		Person.FirstName,
		Person.Salary,
		Person.JoiningDate,
		Department.DepartmentName
	FROM Person INNER JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	JOIN Designation
	ON Person.DesignationID = Designation.DesignationID
	WHERE Department.DepartmentName = @DepartmentName
	AND Designation.DesignationName = @DesignationName
END
EXEC PR_DeptName_DesName 'Admin', 'Clerk'

--7. Create a Procedure that takes the first name as an input parameter and display all the details of the 
--worker with their department & designation name.
CREATE OR ALTER PROCEDURE PR_Fname_To_Details
	@FirstName VARCHAR(100)
AS
BEGIN
	SELECT 
		Person.*,
		Department.DepartmentName,
		Designation.DesignationName
	FROM Person INNER JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	INNER JOIN Designation
	ON Person.DesignationID = Designation.DesignationID
	WHERE Person.FirstName = @FirstName
END
EXEC PR_Fname_To_Details 'Rahul'

--8. Create Procedure which displays department wise maximum, minimum & total salaries.
CREATE OR ALTER PROCEDURE PR_DeptWise_Max_Min_TotalSalary
AS
BEGIN
	SELECT 
		Department.DepartmentName,
		MAX(Person.Salary) AS Maximum_Salary,
		MIN(Person.Salary) AS Minimum_Salary,
		SUM(Person.Salary) AS Total_Salary
	FROM Person INNER JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	GROUP BY Department.DepartmentName
END
EXEC PR_DeptWise_Max_Min_TotalSalary


--9. Create Procedure which displays designation wise average & total salaries.
CREATE OR ALTER PROCEDURE PR_DesWise_Avg_TotalSalary
AS
BEGIN
	SELECT
		Designation.DesignationName,
		AVG(Person.Salary) AS Average_Salary,
		SUM(Person.Salary) AS Total_Salary
	FROM Person INNER JOIN Designation
	ON Person.DesignationID = Designation.DesignationID
	GROUP BY Designation.DesignationName
END
EXEC PR_DesWise_Avg_TotalSalary

---C
--10. Create Procedure that Accepts Department Name and Returns Person Count.
CREATE OR ALTER PROCEDURE PR_DeptWise_Person_Count
AS
BEGIN
	SELECT 
		Department.DepartmentName,
		COUNT(Person.PersonID)
	FROM Person INNER JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	GROUP BY Department.DepartmentName
END
EXEC PR_DeptWise_Person_Count

--11. Create a procedure that takes a salary value as input and returns all workers with a salary 
--greater than input salary value along with their department and designation details.
CREATE OR ALTER PROCEDURE PR_GreaterThan_GiverSalary
	@InputSalary INT
AS
BEGIN
	SELECT 
		Person.*,
		Department.DepartmentName,
		Designation.DesignationName
	FROM Person INNER JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	INNER JOIN Designation
	ON Person.DesignationID = Designation.DesignationID
	WHERE Person.Salary > @InputSalary
END		

EXEC PR_GreaterThan_GiverSalary 14000

--12. Create a procedure to find the department(s) with the highest total salary among all departments.
CREATE OR ALTER PROCEDURE PR_Highest_Total_Salary
AS
BEGIN
	SELECT 
		Department.DepartmentName,
		MAX(Person.Salary)
	FROM Person JOIN Department
	ON Person.DepartmentID = Department.DepartmentID
	WHERE Person.Salary = 
			(SELECT 
				Department.DepartmentName,
				SUM(Person.Salary)
			FROM Person JOIN Department
			ON Person.DepartmentID = Department.DepartmentID
			GROUP BY Department.DepartmentName
			)
END

--13. Create a procedure that takes a designation name as input and returns a list of all workers 
--under that designation who joined within the last 10 years, along with their department.


--14. Create a procedure to list the number of workers in each department who do not have a designation 
--assigned.


--15. Create a procedure to retrieve the details of workers in departments where the average salary is above 
--12000.







