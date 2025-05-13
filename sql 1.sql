use sakila;
select * from sakila.actor;
show databases;
create database school_db;
use school_db;
select database();
show databases;
drop database school_db;
show databases;
create database store_db;
use store_db;
create table customer(
id int , name varchar(20) , city varchar(20)
);
use store_db;
insert into customer( id , name , city)
values(10 ,"rahul" , "raipur"),(20,"raj","rajgarh");
select *from customer;
select*from customer where id = 10;
ALTER TABLE customer
ADD contact int;
select *from customer;
update customer
set contact = 2222222222
where name = "raju";
select *from customer;
delete from customer

where id = 20;
use store_db;
select *from customer;

