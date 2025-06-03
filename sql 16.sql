create database result ;
create table students ( studentid int primary key ,
						student varchar (20) ,
                        age int ,
                        grade int , 
                        city varchar (20) );
insert into students   (studentid , student  , age , grade , city ) values 
                        (1 , 'rahul' , 11 , 7 , 'jpr' ) ;
select * from students ;                     


-- delete that actor id whose actor id has same as that of first name penelope
use sakila ;
select actor_id , first_name from actor ; 
create 
delete from test99 where actor_id in  (select actor_id from actor where first_name = 'penelope');                      
 select * from test99;                 
 -- update the emount of customer id one as with the same amounr done by the customer for payment id 2 
 select  * from payment ;
 create table  test as select payment_id , customer_id , amount from payment  ;
 select  * from test ;
 update test set amount  = (select amount from payment  where payment_id = 2 and customer_id = 1);
 
 select * from  test where customer_id = 1 and amount = (select amount from test  where payment_id = 2 );
											