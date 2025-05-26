use sakila;
-- subquerry -- query within query 
select * from payment where  payment_id = 6;
select * from payment 
  where amount = (select amount from payment where payment_id = 6)
  
  -- i need to get all the columns for the actor whoes actor id greater than the actor id of the person whoes first name id ed and last name chase
  -- use sakila ;
  -- select * from actor;
  -- select * from actor where actor_id >3;
   -- select * from actor
   -- where first_name = "ed" and last_name = "chase" ;
   
   -- get the all payment detail for those payment where the month should be = the payment month of payment_id = 5
   
   -- select * from payment 
   -- where month(payment_id) from payment where payment_id = 5;
     -- select * from payment where 
     
    -- select * from payment 
    -- get the customer id payment id and the amount for the payments where the rental id is less than 
    -- the rental id of payment id 7 and amount less than 5
    use sakila ;
    select * from payment ;
    select rental_id  from payment where payment_id  = 7 ; 
     select customer_id , payment_id , amount from payment
     where amount<5 and rental_id<(   select rental_id  from payment where payment_id  = 7);
     
     -- get the amount and the total number of payment done where the total number of payment grester than the total number of payment done by amount 5.99
select * from payment ;
select count(amount) from payment where amount = 5.99;


-- in (2.99 , 5.99)

 select * from payment 
 where amount in ( select amount from payment where payment_id in (3 ,1));
 
-- nested query = (2.99 ,5.99)
 select * from payment 
 where amount >any (select amount from payment where payment_id in (3 , 1));
 -- all -- greater than the maximum value of subquery
 select* from payment
  where amount >all  (select amount from payment where payment_id in (3 , 1));
 
 -- 
     