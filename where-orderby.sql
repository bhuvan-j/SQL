CREATE TABLE Employee (EmpID INT IDENTITY primary key NOT NULL , EmpName VARCHAR(50) NOT NULL, 
	    Designation VARCHAR(50) NULL, 
        Department VARCHAR(50) NULL, 
        JoiningDate DATETIME NULL)

INSERT INTO Employee VALUES ('CHIN YEN', 'LAB ASSISTANT', 'LAB', GETDATE() + (365 * 2 * RAND() - 365)),
	('MIKE PEARL', 'SENIOR ACCOUNTANT', 'ACCOUNTS', GETDATE() + (365 * 2 * RAND() - 365)),
	( 'GREEN FIELD', 'ACCOUNTANT', 'ACCOUNTS', GETDATE() + (365 * 2 * RAND() - 365)),
	( 'DEWANE PAUL', 'PROGRAMMER', 'IT', GETDATE() + (365 * 2 * RAND() - 365)),
	( 'MATTS', 'SR. PROGRAMMER', 'IT', GETDATE() + (365 * 2 * RAND() - 365)),
	( 'PABCD', 'ACCOUNTANT', 'ACCOUNTS', GETDATE() + (365 * 2 * RAND() - 365)),
    ( 'XYZ', 'ACCOUNTANT', 'ACCOUNTS', GETDATE() + (365 * 2 * RAND() - 365)),
    ( 'BHUVAN', 'HEAD', 'GLOBAL', GETDATE() + (365 * 2 * RAND() - 365)),
    ( 'ARYAN', 'PROGRAMMER', 'DATA', GETDATE() + (365 * 2 * RAND() - 365)),
    ( 'MOHIT', 'WEB DEVELOPER', 'WEBD', GETDATE() + (365 * 2 * RAND() - 365)),
    ( 'VIBHU', 'WORKER', 'ACCOUNTS', GETDATE() + (365 * 2 * RAND() - 365))
    
    select * from employee
   
    -- USING WHERE WITH LIKE
    SELECT * FROM EMPLOYEE WHERE EMPNAME LIKE('_I%')
    
    --USING WHERE WITH OR
    SELECT EMPNAME,joiningdate FROM Employee where designation='accountant' or department='webd'
    
    --using WHERE WITH AND
    SELECT EMPNAME,DESIGNATION FROM EMPLOYEE WHERE DATEPART(year,joiningdate)<2022 AND EMPname='bHUVAN'
    
    --using where with in
    select designation from employee where department in ('webd','global','it')
    
    --using WHERE with BETWEEN
    select empname from employee where empid between 1 and 5
    
    alter TABLE Employee add age int 
   -- using WHERE inside a loop
    declare @i int 
    set @i= 1
    while (@i<=11)
    begin
    	UPDATE Employee
        set Employee.age = (20+rand()*10 /*20 TO 30 YRS */ ) where empid= convert(int,@i)
        SET @i=@i + 1
    END
    
   SELECT * FROM Employee
   
   
   -----ORDER BY----------
   select empname,age from Employee order by age asc --default is always asc
   
   select empname,age from Employee order by age desc
   
   select empname from employee order by EMPname collate Latin1_General_CI_AS
   
   select empname,designation from employee order by joiningdate DESC, age asc
   
   --using offset with order by
   select empname
   from employee
   order by empname offset 5 rows
   
   
   --using fetch and offset with order by
   select empname
   from employee
   order by empname 
   offset 2 rows
   fetch next 3 rows only
   
