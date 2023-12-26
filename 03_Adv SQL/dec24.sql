/*
use classwork;
drop table orders;
Create table If Not Exists orders (order_number int, customer_number int);
Truncate table orders;
insert into orders (order_number, customer_number) values ('1', '1');
insert into orders (order_number, customer_number) values ('2', '2');
insert into orders (order_number, customer_number) values ('3', '3');
insert into orders (order_number, customer_number) values ('4', '3');
insert into orders (order_number, customer_number) values ('5', '4');
insert into orders (order_number, customer_number) values ('6', '4');
insert into orders (order_number, customer_number) values ('7', '4');
insert into orders (order_number, customer_number) values ('8', '4');
*/
select * from orders;

select distinct(customer_number) 
from orders 
where customer_number not in 
(
	select count(order_number) 
    from orders 
    group by customer_number
);



select max(count)
from
(
	select customer_number, count(order_number) as count
	from orders 
	group by customer_number
) x;


select customer_number
from
(
	select customer_number, count(order_number) as count
    from orders  
    group by customer_number 
    order by 2 desc
) as new
limit 1;


-- CTE: Common Table Expression

with new_table as (
	select customer_number, count(order_number) as count
    from orders  
    group by customer_number 
    order by 2 desc
)
select customer_number
from new_table
limit 1;