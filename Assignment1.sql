create table tbIEMP(empno int primary key,ename varchar(40) not null,job varchar(40),mgr_id int,hiredate date not null,salary numeric (7),comm numeric(6),deptno numeric(4) foreign key references tb1DPT(depyno))drop table tb1DPT;
create table tb1DPT(deptno numeric(4) primary key,dname varchar(40),loc varchar(40))
--adding multiple columns to new table
create table Employee(Empid int primary key,EmpName varchar(20),EmpGender char(7),Salary float,Phone int)

--reviewing changes in the table
select * from employee

--inserting/assing values to the table
insert into Employee values(107,'Dhruval','M',12450,1266),(103,'Dhruvil','M',14450,1277),(104,'Dhanisha','F',15450,1666),(105,'Dhawan','M',17450,4266),(106,'Dhruti','F',52450,1666)

--counting items in a particular column
select count(empname) from employee

--altering/adding/deleting columns in the table
alter table  employee
add Pos varchar(20)

 --updating records 
update employee set Pos='CEO' where Empid=106

--excludes null values 
select count(Pos) from Employee

--includes null values
select count(*)Pos from Employee

--shows distinct values in the column/table
select distinct(Pos) from Employee

--average salary 
select AVG(salary) from Employee
--Condition 
select * from Employee where Salary>15000
--This is illegal as there cannot be a function on the right hand of the WHERE Clause
select * from Employee where Salary>AVG(Salary)


--Pattern matching
--1>% (substitues 0,1, or more characters)
--2>_(substitues exactly 1 character)
--3>[](substitues one character in the given range either or)
--4>^(negation ,not in given list range)

--all the names starting with the initial D
select EmpName from Employee where EmpName like 'd%'

--all the names ending with I
select EmpName from Employee where EmpName like '%i' 

--Salaries that have 0 at the END
select Salary  from Employee where Salary like '%0'
--Salaries having 1 in the START
select Salary from Employee where Salary like '1%'
--Salaries that have Digit 2 at Second position from left
select Salary from Employee where Salary like '_2%'
--Salaries whose second last digit is 5
select * from Employee where Salary like '%5_'

--starting and ending 
select EmpName from Employee where EmpName like 'd%l'
select Salary from Employee where Salary like '1%0'

--selects Names Starting with D+any character+(IF One of those letter present at 3 Position)+rest 
select EmpName from Employee where EmpName like 'd_[ory]%'

--Starting with D+(IF One of those character present)+Rest
select EmpName from Employee where EmpName like 'd[hrs]%'

--Names that do not end with the letter I
select * from Employee where EmpName like '%[^i]'

--Starts with DH ut 3 lette rshould not be R
select * from Employee where EmpName like 'dh[^r]%'
--Starts with d+any character +(should not have RU)+rest
select * from Employee where EmpName like 'd_[^ru]%'

--Sorts the names in aplhabetical order 
select * from Employee order by EmpName
select * from Employee order by EmpName desc --Sorts in decreasing order of the aplhabets

--Sort the table by Gender (i.e. aplhabetical order)
select * from Employee order by EmpGender

--Sorts the records as per the increasing order 
select * from Employee order by Salary
select * from Employee order by Salary desc--Sorts as per the decreasing order of the salary

--Sorting works on multiple columns 
select Empname,Salary,EmpGender from Employee order by salary,EmpGender--priority given to salary(if same then checks gender)
select Empname,salary,empgender from Employee order by EmpGender,Salary--priority guven to Gender(if same then check salary)

--Sorting works on multiple columns 
select Empname,Salary,EmpGender from Employee order by salary desc,EmpGender --priority given to salary(if same then checks gender)
select Empname,salary,empgender from Employee order by EmpGender desc,Salary --priority guven to Gender(if same then check salary)

--using alias
select Empname,empgender,salary as EmployeeSalary from Employee order by Salary desc

