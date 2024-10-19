CREATE DATABASE GN
use GN
create table sp(
gan varchar(10),
sh varchar(10),
shi varchar(10),
pa varchar(10))

---altering table-

alter table sp
alter column sh varchar(20)
	
--add column to esisting table

alter table sp
add newcol varchar(30)

--delete the table

alter table sp
drop column newcol 

create database enemy

--deleting whole database 

drop database enemy

--commenting in sql

-- single line commnet(--)
--multi line comment /* comment */

select * from sp

--DML-data manipulation language

insert into sp
values('navee','shett','veers','na'),
('navee','shett','veers','na'),
('navee','shett','veers','na'),
('navee','shett','veers','na')


--
select * from sp


insert into sp(gan,sh,pa)
values('navee','veers','na')

select * from sp

--update table_name set sh='nav'
--where shi=veers


update sp set sh='NaveenShetty'
where shi is NULL

select * from sp

update sp set shi='Naveen'
where sh='NaveenShetty'

select * from sp

----delete --
--once done no reverting back

delete from sp
where sh='NAveenshetty'

select * from sp

create table tb1(
name varchar(20),
no varchar(20),
nk int)


insert into tb1
values('naveen','01',22),
('Veeresh','02',23)
,('shetty','03',24)


select * from tb1


drop table tb1

select * from tb1


create table tb1(
name varchar(20),
no varchar(20),
nk int)


insert into tb1
values('naveen','01',22),
('Veeresh','02',23)
,('shetty','03',24)


select * from tb1

truncate table tb1

select * from tb1

use GN


create database db1

use db1

create table sales(
SID char(10),
Product varchar(50),
Category varchar(50),
Price decimal(7,2),
sale_date date)

select * from sales

--insert values into table


insert into sales
values('S1001','Laptop','IT',70000.20,'2024-01-01')



insert into sales
values('S1002','Keyboard','IT',1000.20,'2024-01-01'),
('S1003','Fridge','HA',18000.35,'2024-01-02'),
('S1004','AC','HA',35000.35,'2024-01-03')


update sales set SID='S1004' where Product='AC'

select * from sales

---DQL-->Data query language


select SID,Price from Sales

use Db1

/* where is use for filtering the physical data */

select * from sales
where category='IT'

select * from sales
where Price=70000.20

select * into sales2
from db1.dbo.sales

select * from sales2

use Gn

select * from dbo.Copy_of_emp

select * from dbo.Copy_of_emp
where city like 'D%'


select * from dbo.Copy_of_emp
where name like '%a'

select * from dbo.Copy_of_emp
where email like '%yahoo%'

--2nd character is a

select * from dbo.Copy_of_emp
where name like '_a%'

select * from dbo.Copy_of_emp
where name like 'N__a%'

--selecting data staring with A-G like ABCDEFG

select * from dbo.Copy_of_emp
where name like '[a-g]%'

--I want to filter out the names A and N as start characters

select * from dbo.Copy_of_emp
where name like '[an]%'

select * from dbo.Copy_of_emp
where name like 'an%N %'

use gn

select top 10 * from Copy_of_emp
select * from copy_of_emp


select top 10 * from copy_of_emp
order by name

select top 10 * from copy_of_emp


select top 10 * from copy_of_emp
order by name desc

use gn

select * from copy_of_emp
order by name
offset 4 rows
fetch next 16 rows only



select * from copy_of_emp
order by eid
offset 4 rows
fetch next 16 rows only

select * from copy_of_emp
order by eid



select * from copy_of_emp_sal
--order by salary desc




select * from copy_of_emp_sal
order by salary desc


select top 10 * from copy_of_emp_sal
order by salary desc  

--fetch 1st highest salary 

select top 1 * from copy_of_emp_sal
order by salary desc

select * from copy_of_emp_sal
order by salary desc
offset 4 rows
fetch next 1 row only

--fetch 5th highest salary to 20th highest salary
use gn
select * from copy_of_emp_sal
order by salary desc
offset 4 rows
fetch next 15 rows only

select * from copy_of_emp_sal
where dept='HR'

select * from copy_of_emp_sal

select dept from copy_of_emp_sal group by dept

select Desi from copy_of_emp_sal group by Desi

select dept from copy_of_emp_sal group by dept

select dept, count(EID), sum(salary) from copy_of_emp_sal group by dept

select dept, count(EID) as 'No of employees', sum(salary) as 'Total CTC' from copy_of_emp_sal group by dept

select desi,sum(salary) from copy_of_emp_sal group by desi


select * from copy_of_emp_sal

select salary from copy_of_emp_sal group by salary


select dept, count(EID) as 'No of employees', sum(salary) as 'Total CTC' from copy_of_emp_sal group by dept
order by 'no of employees' desc


select dept,desi, count(EID) as 'No of employees', sum(salary) as 'Total CTC' from copy_of_emp_sal group by dept,desi
order by 'no of employees' desc



select dept,
count(EID) as 'No of employees',
sum(salary) as 'Total CTC' from copy_of_emp_sal
where dept!='MIS'
group by dept
having sum(salary)>1300000
order by 'no of employees' desc



select dept,
desi,
count(EID) as 'No of employees',
sum(salary) as 'Total CTC' from copy_of_emp_sal
group by dept,desi
having sum(salary)>1300000
order by 'no of employees' desc

--order of select statement with their clauses
--select from where group by having and order by offset and fetch (we can use top in b/w the select and from to fetch no of rows'

--5th march completed

--6th March
use gn


select 4-2 as diff,
		4*2 as product,
		4+2 as addition,
		4/2 as division,
		4%2 as reminder

-- so this work with the numerator datatype

-- the management is decided to give appraisal of 5000 to OPS team,

select * from Copy_of_EMP_Sal
where dept='OPS'

update Copy_of_Emp_sal set salary=salary+5000
where dept='OPS'

alter table Copy_of_EMP_Sal
alter column salary int


select * from Orders$
use gn
--in this table we need to find the amount of each product(sales * quantity)=amount

select*, (sales*quantity) as 'Amount' from orders$--just a analysis query

--we need to deduct 300 from each employee
use gn
select * from Copy_of_EMP_Sal

update Copy_of_EMP_Sal set salary=salary-300

select * from Copy_of_EMP_Sal

--we want to see the monthly salary

select *, (salary/12) as 'Monthly salary' from Copy_of_EMP_Sal

--want to find out the salary who is sharing the same


select * from Copy_of_EMP_Sal
where salary=81250

--want to find out the salary who is sharing more 


select * from Copy_of_EMP_Sal
where salary>81250

--order by salary desc

select * from Copy_of_EMP_Sal
where salary>81250
order by salary desc


--not equals to


select * from Copy_of_EMP_Sal
where salary<>81250


select * from Copy_of_EMP_Sal

--desi!=director


select * from Copy_of_EMP_Sal
where desi!='Director'

use gn

--logical and, or, not

--And
select * from Copy_of_EMP
where city='Delhi' and addr2='Dwarka'

select * from Copy_of_EMP
where city='Delhi' and addr2 like '%Dwarka%'


--or
select * from Copy_of_EMP
where city='Delhi' or addr2='Dwarka'


select * from Copy_of_EMP
where (city='Delhi' or addr2 like '%Dwarka%')



select * from Copy_of_EMP
where /*(city='Delhi' or */addr2 like '%Rajpur road%'

--Not-check the negation

select * from Copy_of_EMP
where city not like 'D%'


select * from Copy_of_EMP
where city  like 'NUll'

select * from Copy_of_EMP
where city  like NUll

select * from Copy_of_EMP_Sal
where salary is not NUll


select * from Copy_of_EMP_Sal
where salary is NUll

update Copy_of_EMP_Sal set salary=89000
where salary is null

select * from Copy_of_EMP_Sal
where salary=89000

update copy_of_emp_sal set salary=null
where salary=89000



select * from Copy_of_EMP_Sal
where salary is NUll

use gn

select * from Copy_of_EMP_Sal
where salary is NUll

--how many employees are there whose salary b/w 100000 and 200000

select * from Copy_of_EMP_Sal
where salary between 100000 and 200000--both values are incuded in the range 

select * from Copy_of_EMP_Sal
where salary between 121967 and 249700--both values are incuded in the range 
order by salary

--In operator works in list of values, to filter the multiple values
--I want to check the employees details who all are coming from delhi, dehradun, pune

select * from Copy_of_EMP
where city in ('delhi', 'dehradun', 'pune')

--distinct is unique -it finds out the unique values in the column or record
use gn
select distinct city from Copy_of_EMP

select distinct dept from Copy_of_EMP_sal

--but there might be anamolies while getting the data
--duplicate records
--some validation
--Null values
--some date restrictions
--to avoid such anamolies we set some rules are called constraints

--constraints in sql are uniqueness in the data but my accept 1 value as null techniqually as it is also unique value but only one 
--primary key-- is constraint/key/clustered index(create the uniqueness and also won't accept the null value
--check -constraint -work with condition(needs to match to update the data)
--do not accept the application from city meerut, delhi, dehradun date of birth not below 2000-01-01
--default-default constraints gives or sets a default value if user is not providing it.
--it creates the relationship b/w the table parent and child

use gn

select * from Copy_of_EMP
select * from Copy_of_EMP_sal

--primary key if you have any table structure with parent child relation create a primary key on parent table
--how to set the constraints

alter table Copy_of_EMP
add constraint pk01 primary key(EID)

alter table Copy_of_EMP
alter column eid varchar(10) not null

--unique--to email field if we add any duplicate value to unique column it will not take

alter table Copy_of_EMP
add constraint uk01 unique(email)

select * from Copy_of_EMP

insert into Copy_of_EMP
values('E1136','Naveen','shshs','gdsdsdhsjdks','sdjsah','9383838','NBHATT@GMAIL.COM','1995-10-13','1995-10-13')

--default - in the salary table we need to set the temp dept as default dept.

select * from Copy_of_EMP
where eid='E1135'

select * from Copy_of_EMP
where eid='E1133'

--default
select * from Copy_of_EMP_sal

alter table Copy_of_EMP_sal
add constraint df1 default 'Temp' for dept


--validate

insert into Copy_of_EMP_sal(EId,desi,salary)
values('e1134','Associte',50000)

select * from Copy_of_EMP_Sal
where eid='e1134'

--6th march completed

--7th march started

--foreign key--it is a reference key to create relation as a parent & child table

use Gn

select * from Copy_of_EMP
select * from Copy_of_EMP_Sal

alter table Copy_of_EMP_sal
add constraint fk01 foreign key(EID) references copy_of_emp


use gn
select * from copy_of_emp
select * from copy_of_emp_sal

delete from copy_of_emp_sal
where eid='E1138'

delete from copy_of_emp
where eid='E1137'

alter table Copy_of_EMP_sal
add constraint fk01 foreign key(EID) references copy_of_emp(EID)

delete from copy_of_emp_sal
where eid='E1134' and Desi='Associte'


alter table Copy_of_EMP_sal
add constraint fk01 foreign key(EID) references copy_of_emp(EID)

alter table Copy_of_EMP
alter column eid varchar(10) not null


alter table Copy_of_EMP_sal
add constraint fk01 foreign key(EID) references copy_of_emp(EID)

alter table copy_of_emp_sal
alter column eid varchar(10)

use gn

alter table Copy_of_EMP_sal
alter column eid varchar(10) not null

create table tb6(eid char(6) primary key,
name varchar(10))

select * from tb3


create table tb4(eid char(6),
address varchar(10))

select * from tb4

insert into tb3 values('E001','Naveen'),('E002','Veeresh'),('E003','Netra'),('E004','Suma'),('E005','Sharanappa')


insert into tb4 values('E001','Snd'),('E002','Snd2'),('E003','Snd3'),('E004','Snd4'),('E005','Snd5')

select * from tb3

select * from tb4

update tb4 set address='snd1'
where eid='E001'


select * from tb4

alter table tb4
add constraint fk01 primary key(EID) references tb3(eid),

use gn
create table tb5(eid char(6) primary key,
name varchar(10))


create table tb6(eid char(6) foreign key references tb5(EID),
address varchar(10))



insert into tb5 values('E001','Naveen'),('E002','Veeresh'),('E003','Netra'),('E004','Suma'),('E005','Sharanappa')


insert into tb6 values('E001','Snd'),('E002','Snd2'),('E003','Snd3'),('E004','Snd4'),('E005','Snd5')

select * from tb5-- parent table 
select * from tb6-- child table

--to test relation was established or not by inserting values in child which is not there in parent


insert into tb6 values('E006','Snd')

--we got error ---->The INSERT statement conflicted with the FOREIGN KEY constraint "FK__tb6__eid__7849DB76". The conflict occurred in database "GN", table "dbo.tb5", column 'eid'.

use gn
select * from copy_of_emp
select * from copy_of_emp_sal

alter table copy_of_emp
add constraint pk01 primary key(EID)


alter table Copy_of_EMP_sal
add constraint fk01 foreign key(EID) references copy_of_emp(EID)


select * from copy_of_emp
select * from copy_of_emp_sal

--we are able to insert into child table if we have data in parent table

insert into copy_of_emp_sal values ('E1135','Temp','Associte',47000)

--I will not be able to add data of primary key if not present in forign key

insert into copy_of_emp_sal values ('E1136','Temp','Associte',48000)


--error--The INSERT statement conflicted with the FOREIGN KEY constraint "fk01". The conflict occurred in database "GN", table "dbo.Copy_of_EMP", column 'EID'.

--removing constraint fk01

alter table copy_of_emp_sal
drop constraint fk01

alter table copy_of_emp_sal
add constraint fk01 foreign key(EID) references copy_of_emp(EID)
on update cascade
on delete cascade



--if we choose cascede than data will be updated in both tables


update copy_of_emp set eid='E1138'
where eid='E1001'


select * from copy_of_emp
select * from copy_of_emp_sal

use gn


--delete --because of on delete cascade it will delete data in both parent and child table

delete from Copy_of_EMP
where eid='E1138'
--now it is deleted in child as well check it

select * from Copy_of_EMP where eid='E1138'



select * from Copy_of_EMP_Sal where eid='E1138'


select * from copy_of_emp
select * from copy_of_emp_sal


--setting a constraint while creating a table 

--I am creating a table where recruitment need to happen

--Rules -it will accept candidate from Delhi, Mumbai, Bangalore, chennai
--DOB should be older than 2002-01-01
--department need to be Int_intern by default
--CID should be primary key
--phone should be unique
--all column should be not nullable
--CID, Name

create table recruitment 
(CID char(5) not null primary key, Name varchar(50) not null,
city varchar(50) not null  check (city in ('Delhi','Mumbai', 'Bangalore', 'chennai')),
dept varchar not null default 'Int_intern',
phone varchar(50) not null unique,
DOB date not null check (dob>='2002-01-01'))

select * from recruitment

--we  did mistake so we need to create againe
use gn
drop table recruitment

--we create it againe


create table recruitment 
(CID char(5) not null primary key,
Name varchar(50) not null,
city varchar(50) not null  check (city in ('Delhi','Mumbai', 'Bangalore', 'chennai')),
dept varchar(50) not null default 'Int_intern',
phone varchar(50) not null unique,
DOB date not null check (dob between '2002-01-01' and '2004-01-01'))

--isnert
insert into recruitment(CID,Name,city,phone,DOB) values('C1001','Prem Sagar','Dehradune','911083635','2002-01-01')


--we got error
/*The INSERT statement conflicted with the CHECK constraint "CK__recruitmen__city__3B0BC30C". The conflict occurred in database 
"GN", table "dbo.recruitment", column 'city'.
*/

insert into recruitment(CID,Name,city,phone,DOB) values('C1001',null,'Dehradune','911083635','2002-01-01')

/*
Cannot insert the value NULL into column 'Name', table 'GN.dbo.recruitment'; column does not allow nulls. INSERT fails.
*/
use gn
insert into recruitment(CID,Name,city,phone,DOB) values('C1001','Shetty','Dehradune',null,'2001-01-01')

/*
Cannot insert the value NULL into column 'Name', table 'GN.dbo.recruitment'; column does not allow nulls. INSERT fails.
*/

--count() -this function will count the not null values

use gn
select count(*) from copy_of_emp


select * from Copy_of_EMP
select count('ADDR1') from copy_of_emp



select count('ADDR2') from copy_of_emp


select count('Name') from copy_of_emp


select count('email') from copy_of_emp


select count('city') from copy_of_emp

select * from Copy_of_EMP_Sal

select count(*) from Copy_of_EMP_Sal
select count('dept') from Copy_of_EMP_Sal

select count('desi') from Copy_of_EMP_Sal

select count('salary') from Copy_of_EMP_Sal

--get the details of employees who are from delhi including there salary

--eid,name,city,phone, email,doj,dept,desi,salary,epf(12%),hra(15%)
--here comes the role of joins(concept in sql) joins are used to combine the data as columnar,
---when we have data in multiple table we use joins to get those data

---Types of joins
--Inner join or join:- will join the data with the common or intersecting part.
use gn
--I need to find the data whose salary is updated.

select copy_of_emp.eid, name, city,phone, doj, dept, desi, salary, salary * .12 as 'EPF',salary*.15 as 'HRA' from copy_of_emp inner join
Copy_of_EMP_Sal on Copy_of_EMP.eid=Copy_of_EMP_Sal.eid




select copy_of_emp.eid, name, city,phone, doj, dept, desi, salary, (salary * .12) as 'EPF',salary*.15 as 'HRA' from copy_of_emp inner join
Copy_of_EMP_Sal on Copy_of_EMP.eid=Copy_of_EMP_Sal.eid

--we will not get if we use =null

select * from Copy_of_EMP_Sal
where SALARY =NULL
-- we need to use is before null
select * from Copy_of_EMP_Sal
where SALARY is null

--get other details of not getting salary person

select * from Copy_of_EMP
where eid='E1039'     


select * from Copy_of_EMP_Sal
where eid='E1097'

--update e1097 salary as null
update Copy_of_EMP_Sal set salary =null
where eid='E1097'

--get printed
select * from Copy_of_EMP_Sal
where SALARY is null

--Left join-with or without salary which gives whole data

use gn

select copy_of_emp.eid, name, city,phone, doj, dept, desi, salary, (salary * .12) as 'EPF',salary*.15 as 'HRA' from copy_of_emp Left join
Copy_of_EMP_Sal on Copy_of_EMP.eid=Copy_of_EMP_Sal.eid



--Right join- with salary which gives salary table data with common data


select copy_of_emp.eid, name, city,phone, doj, dept, desi, salary, (salary * .12) as 'EPF',salary*.15 as 'HRA' from copy_of_emp Right join
Copy_of_EMP_Sal on Copy_of_EMP.eid=Copy_of_EMP_Sal.eid

select * from copy_of_emp_sal

select count(*) from Copy_of_EMP_Sal

select count('name') from Copy_of_EMP

--full join or full outer join

select Copy_of_EMP.eid, name, city,phone,doj,dept,desi,salary,(salary*.12) as 'EPF',(salary*.15) as 'HRA' from Copy_of_EMP 
full join Copy_of_EMP_Sal on Copy_of_EMP.eid=Copy_of_EMP_Sal.eid

select count(*) from Copy_of_EMP

--for giving alias names

select * from Copy_of_EMP E 
full join Copy_of_EMP_Sal E_S
on E.EID=E_S.EID

use gn

create table empl(ID int, name char(1))

create table modules(ID int, mod_name char(1))

alter table modules
alter column mod_name varchar(50)

insert into empl
values(1,'A'),(2,'B'),(3,'C'),(4,'D')

insert into modules
values(1,'SQL'),(2,'PYTHON'),(3,'ML'),(4,'POWER BI')

SElect * from empl

SElect * from modules

select e.id,name,mod_name from empl e cross join modules

use gN

select e.id,name,mod_name from empl e cross join modules

select * from empl,modules

select * from tb1
drop table tb1

create table tb1(id int,name char(1),m_id int)

create table managers(id int,m_name char(1))

insert into tb1
values(1,'A',null),(2,'B',1),(3,'C',1),(4,'D',3),(5,'E',3),(6,'F',2),(7,'G',6)

select * from tb1

--m_id managers are having id --1,2,3,6

insert into managers values(1,'A'),(2,'B'),(3,'C'),(6,'F')


select * from tb1
select * from managers

--we want to display id of empl, name, managers name whom they are reporting.

select e.id,name, m_name from tb1 e join managers m
on e.m_id=m.id



--we want to display id of empl, name, managers name whom they are reporting.
use gn
select e.id,name, m_name from tb1 e left join managers m
on e.m_id=m.id

--this result is giving the hirarchy

--this is called as self join where we use the other joins to get the output because we don't have any syntex for self join
--only when we compare the data of a table in itself to get the heirarchy information by using the same data for join

select * from tb1


select b1.name, b2.name from tb1 b1 left join tb1 b2 on
b1.m_id=b2.id

--7Th March completed


--13th march

create function age_calc(@db as date)
returns int
as
begin 
declare @age as int 
set @age=datediff(year,@db,getdate())
return @age
end

use gn

select * from [dbo].[Copy_of_EMP]

--13th march

create function age_calc(@db as date)
returns int
as
begin 
declare @age as int 
set @age=datediff(year,@db,getdate())
return @age
end


select *, dbo.age_calc([Copy_of_EMP].[DOB]) as 'age' from [Copy_of_EMP]


select *, dbo.age_calc(DOB) as 'age' from [Copy_of_EMP]


alter table copy_of_emp
alter column DOB date

select * from Copy_of_EMP
select * from Copy_of_EMP_Sal

SELECT TO_DATE('2024-04-26', 'YYYY-MM-DD') AS converted_date;

select CAST('2020-02-26 09:10:30' as DATETIME)
--Both the functions will give you following date converted to DATETIME datatype:


select *,trim(' ' from concat(left(name,1),right(name,len(name)-charindex(' ',name)),right(eid,4),'@learnbay.co')) as 'corpmail' from Copy_of_EMP

-- we were getting space character after eid so trimming from right

update Copy_of_EMP set EID=rtrim(EID)

select *,trim(' ' from concat(left(name,1),right(name,len(name)-charindex(' ',name)),right(eid,4),'@learnbay.co')) as 'corpmail' from Copy_of_EMP

select reverse(EID) from Copy_of_EMP

select eid,reverse(eid) from Copy_of_EMP

select trim('.' from 'Naveen .shetter.')

select charindex('a','Naveen')

select ltrim('   Naveen')
select ('   Naveen  ')

select rtrim('Naveen   ')

--changing the case of a given letter or word

select upper('naveen')

select lower('NAVEEN')

select upper(name) from Copy_of_EMP

select lower(name) from Copy_of_EMP

--sub string

select SUBSTRING(name,1,3) from Copy_of_EMP


select name, substring(upper(name),1,1) from Copy_of_EMP

--first name only from full name

select substring(name,1,charindex(' ',name)) from Copy_of_EMP

--first word in capital and last name first letter in capital

select substring(name,1,charindex(' ',name)), substring(name,charindex(' ',name)+1,1) from copy_of_emp
select * from Copy_of_EMP_Sal
select avg(salary) from Copy_of_EMP_Sal

select dept, avg(salary) from Copy_of_EMP_Sal 
group by dept

--max min

select dept,max(salary) 'maximum', min(salary) 'minimum', avg(salary) 'avarage' from Copy_of_EMP_Sal 
group by dept

----