create database new
use new


create table new(
name varchar(30),
ids varchar(30),
rn varchar(20))

select * from new

---altering table

alter table new
add newco varchar(30)

---
select * from new
------

-- change column data

alter table new
alter column newco varchar(30)

--

insert into new values
('naveen','shetty','snd','10'),
('naveen','shetty','snd','10'),
('naveen','shetty','snd','10'),
('naveen','shetty','snd','10')

select * from new

create database db

--deleting entire database

drop database db

-----------

--updating data

select * from new

--updating

update new set ids='shetter'
where name='naveen'

-----

select * from new

------
--once done no reverting back

delete from new
where name='naveen'

----
select * from new

------------



create table tb1(
name varchar(20),
no varchar(20),
nk int)

select * from tb1

insert into tb1
values('naveen','01',22),
('Veeresh','02',23)
,('shetty','03',24)


---to delete all data we use truncate

select * from tb1

truncate table tb1

select * from tb1

create table sales(
SID char(10),
Product varchar(50),
Category varchar(50),
Price decimal(7,2),
sale_date date)


select * from sales

insert into sales
values('S1001','Laptop','IT',70000,'2024-01-01')

select * from sales

insert into sales
values('S1002','Keyboard','IT',1000.20,'2024-01-01'),
('S1003','Fridge','HA',18000.35,'2024-01-02'),
('S1004','AC','HA',35000.35,'2024-01-03')


select * from sales

update sales set Product='Laptop'
where SID='s1001'

select * from sales

select SID, Price from sales

select * from sales
where price>10000

--copying table to table

select * into sales2
from db1.dbo.sales
use db1
select * from sales3

--to select data where it has null

select * from sales3
where Sale_ID is null


select * from sales3
where Date is null


select * from sales3
where Store_ID is null


select * from sales3
where Product_ID is null



select * from sales3
where Units is null

--the above sales 3 has no null data 

select top 10 * from Copy_of_EMP_Sal

select * from copy_of_emp_sal
where salary is null


select * from copy_of_emp_sal
where Desi is null



select * from copy_of_emp_sal
where dept is null


select * from copy_of_emp_sal
where EID is null

--above copy_of_emp_sal is also not having any null values

use db1

select top 10 * from [dbo].[Copy_of_EMP_Sal]
order by desi desc

select * from copy_of_emp_sal
order by desi
offset 4 rows
fetch next 16 rows only

--


select * from copy_of_emp_sal
order by eid
offset 4 rows
fetch next 16 rows only

-----

select * from copy_of_emp_sal
order by salary

select * from copy_of_emp_sal
order by dept


select top 1 * from copy_of_emp_sal
order by salary desc

select top 1 * from copy_of_emp_sal
order by EID


select top 1 * from copy_of_emp_sal
order by salary asc

use db1

