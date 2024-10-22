create database db3
drop database db3

use db3

--right click on database--> tasks --> import data --> select the file-- modify column type accordingly finish

select * from Datacleaning1

select * from Datacleaning1
where Product_Category is null

update Datacleaning1 set Product_Category='Toys'
where Product_Category is null

alter table datacleaning1
alter column product_price int

/*

1	Action Figure	Toys	$9.99 	$15.99 
2	Animal Figures	Toys	$9.99 	$12.99 
3	Barrel O' Slime	Toys	$1.99 	$3.99 
4	Chutes & Ladders	Games	$9.99 	NULL
5	Classic Dominoes	Games	$7.99 	$9.99 
6	Colorbuds	Toys	$6.99 	$14.99 
7	Dart Gun	Sports & Outdoors	$11.99 	$15.99 
8	Deck Of Cards	Games	$3.99 	$6.99 


*/

update Datacleaning1 set product_price=12.99
where product_price is null

select * from Datacleaning1

/*
1	Action Figure	Toys	$9.99 	16
2	Animal Figures	Toys	$9.99 	13
3	Barrel O' Slime	Toys	$1.99 	4
4	Chutes & Ladders	Games	$9.99 	12
5	Classic Dominoes	Games	$7.99 	10
6	Colorbuds	Toys	$6.99 	15
7	Dart Gun	Sports & Outdoors	$11.99 	16
8	Deck Of Cards	Games	$3.99 	7
*/

