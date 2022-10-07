create database Unversity;
use Unversity;
--DDl -> [ create - alter - drop - truct]
-- to create 
create table Students(
ID Numeric primary key,FirstName char(50) not null ,LastName char(50),
[Address] char(50),City char(50), Country char (25),BirthDate Date)

-- to add column
alter table Students add PostCode Numeric;

-- to delete column
alter table Students drop column  Country;

-- to delete table
drop table Students;

------------------------------------------------
--DDL -> Data manipulation languge [insert - update - delete select]

create database Company;
use Company;
create table Employee(Fname char(30) not  null,Lname char(30) , 
SSN numeric primary key,BirthDate Date,[Address] char(30),Sex char , salary money ,superssn numeric ,Dno numeric
)

insert into Employee 
values('Mohmed','Hamed',223366,'8/25/1980','8 lebanon st','F',null,null,null);

insert into Employee values('Amer','Omeran',321654,'9/14/1963','44 Heliopolis.Cairo','M',2500,null,null),
('Edward','Hanna',512463,'8/19/1972','18 Abaas','M',1500,321654,30),
('Maged','Raoof',521634,'6/4/1963','18 Kholosi st.shobra.ca','M',1000,968574,10)


create table Department(Dname char(30) not  null,Dno numeric ,MGRSSN numeric ,MGRStartDate Date  )
insert into Department values ('DP1',10,223344,'1/1/2005') ,('DP2',20,968574,'1/1/2006'),('DP3',30,512463,'1/1/2005') 
insert into Department (Dname,Dno)values('DP4',40);	
-- (1)add data with insert
--1
insert into Employee(Fname,Lname,SSN,BirthDate,[Address],sex ,salary, superssn,Dno)
values('Ragab','Sayed',1,'5/11/2000','luxor,khouzam','M',20000,112233,20);
--2
insert into Employee
values('Rafee','Sayed',3,'7/12/2002','luxor,khouzam','M',20000,112233,40);
--3
insert into Employee(Fname,Lname,SSN,BirthDate,sex ,salary, Dno)
values('Marw','ali',4,'5/11/2000','f',20000,20);

-- (2)update data with update
update Employee
set salary = 1500
where SSN = 4; 

update Employee
set salary = 30000, dno = 10 where SSN = 1; 

-- (3)delete
delete from Employee
where SSN = 4;

--(4) (trunct) in photo the diff between delete and trucnt
-----------------------------------
-- DMl[select]
select Fname  ,SSN from Employee;
select * from Employee;
use  Company;
insert into Employee values('Rageb','Sayed',9,'5/11/2005','behra','M',2000,2233453,25);
update Employee
set sex='f'
where Fname='Aya'

select * from Employee
where salary <= 20000 and salary>=1500 

select *from Employee
where salary   between 1500 and 20000; 

select *from Employee
where superssn= 112233 or superssn = 2233453;

select *from Employee
where superssn in(112233 , 2233453) -- use when the compare to same colmun

select *
from Employee
where Fname like 'Rag?b'; -- like use find name diff char


select Fname ,salary, salary*0.01 as Bouns --alising
from Employee


select Fname +''+Lname as [Full name]
from Employee
where salary *12 > 10000


select Fname, SSN
from Employee 
order by Fname desc

select *from Employee
order by Dno asc ,salary desc

select  distinct Dno
from Employee

select   Dno , superssn 
from Employee

select  distinct Dno , superssn 
from Employee




------------------------------
--inner join
--equal join
select fname,Dname from Employee,Department
where MGRSSN = SSN

select fname,Dname from Employee e,Department as d
where e.Dno = d.Dno
order by Dname

-- inner join
select fname,Dname
from Employee e inner join Department d
on e.Dno = d.Dno;

