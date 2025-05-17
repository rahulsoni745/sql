use sakila;
--- order by alias - multiple row function
select*from actor order by first_name;
-- also sorted the same name by actor id
select*from actor order by first_name , actor_id desc;
---- alias give nickname to column name 
select actor_id , actor_id+10 as "newactor" from actor;
--- multi row function ---give single output 
--- max,min,count,avg
select*from payment;
select distinct(customer_id) from payment;
--- dupliate value remove by distinct
select count(customer_id), count(distinct(customer_id));

select count( customer_id) as totalcustomer,
      count(customer_id) - count(distinct(coustomer_id)) as repetativecustomer
      from payment;
select count(amount) , sum(amount), avg(amount) from payment; 
  --- aggretate funcation are function which help to perform calculate value and return single valuee 
  ---- donot use normal column with aggregate funcation 
  ---- group by 
  ---similar value ka group
      