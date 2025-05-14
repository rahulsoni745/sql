use sakila;
show databases;
show tables;
select*from actor where actor_id =3 or actor_id = 7 or actor_id = 5;
select*from actor where actor_id in (3,5,7);
select *from actor where actor_id between 7 and 3;

select*from actor where actor_id  not between 3 and 100;
select*from actor where first_name like "_e%r";
select*from actor where first_name like"__nn__";
select*from actor where first_name like"%nn%";
select *from actor where  length(first_name) >2 and length(last_name) >3;
