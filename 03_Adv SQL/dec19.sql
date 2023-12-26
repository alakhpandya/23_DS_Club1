/*
use classwork;
Drop table if exists Employees;
Create table If Not Exists Employees (employee_id int, name varchar(30), salary int);
Truncate table Employees;
insert into Employees (employee_id, name, salary) values ('2', 'Meir', '3000');
insert into Employees (employee_id, name, salary) values ('3', 'Michael', '3800');
insert into Employees (employee_id, name, salary) values ('7', 'Addilyn', '7400');
insert into Employees (employee_id, name, salary) values ('8', 'Juan', '6100');
insert into Employees (employee_id, name, salary) values ('9', 'Kannon', '7700');
*/
/*
select * from Employees;

select employee_id, name, salary,
case
	when employee_id % 2 != 0 and name not like "M%" then salary
    else 0
end as bonus
from Employees
order by employee_id;
*/

/*
Drop table if exists SalesPerson;
Drop table if exists Company;
Drop table if exists Orders;
Create table If Not Exists SalesPerson (sales_id int, name varchar(255), salary int, commission_rate int, hire_date date);
Create table If Not Exists Company (com_id int, name varchar(255), city varchar(255));
Create table If Not Exists Orders (order_id int, order_date date, com_id int, sales_id int, amount int);
Truncate table SalesPerson;
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date) values ('1', 'John', '100000', '6', '2006-04-01');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date) values ('2', 'Amy', '12000', '5', '2010-05-01');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date) values ('3', 'Mark', '65000', '12', '2008-12-25');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date) values ('4', 'Pam', '25000', '25', '2005-01-01');
insert into SalesPerson (sales_id, name, salary, commission_rate, hire_date) values ('5', 'Alex', '5000', '10', '2007-02-03');
Truncate table Company;
insert into Company (com_id, name, city) values ('1', 'RED', 'Boston');
insert into Company (com_id, name, city) values ('2', 'ORANGE', 'New York');
insert into Company (com_id, name, city) values ('3', 'YELLOW', 'Boston');
insert into Company (com_id, name, city) values ('4', 'GREEN', 'Austin');
Truncate table Orders;
insert into Orders (order_id, order_date, com_id, sales_id, amount) values ('1', '2014-01-01', '3', '4', '10000');
insert into Orders (order_id, order_date, com_id, sales_id, amount) values ('2', '2014-02-01', '4', '5', '5000');
insert into Orders (order_id, order_date, com_id, sales_id, amount) values ('3', '2014-03-01', '1', '1', '50000');
insert into Orders (order_id, order_date, com_id, sales_id, amount) values ('4', '2014-04-01', '1', '4', '25000');

select * from SalesPerson;
select * from Company;
select * from Orders;

select name
from SalesPerson
where sales_id not in 
(
select o.sales_id
from Orders o
join Company c
on c.com_id = o.com_id
where c.name = "RED"
);
*/

/*
Drop table if exists Customer;
Drop table if exists Orders;
Drop table if exists Seller;
Create table If Not Exists Customer (customer_id int, customer_name varchar(20));
Create table If Not Exists Orders (order_id int, sale_date date, order_cost int, customer_id int, seller_id int);
Create table If Not Exists Seller (seller_id int, seller_name varchar(20));
Truncate table Customer;
insert into Customer (customer_id, customer_name) values ('101', 'Alice');
insert into Customer (customer_id, customer_name) values ('102', 'Bob');
insert into Customer (customer_id, customer_name) values ('103', 'Charlie');
Truncate table Orders;
insert into Orders (order_id, sale_date, order_cost, customer_id, seller_id) values ('1', '2020-03-01', '1500', '101', '1');
insert into Orders (order_id, sale_date, order_cost, customer_id, seller_id) values ('2', '2020-05-25', '2400', '102', '2');
insert into Orders (order_id, sale_date, order_cost, customer_id, seller_id) values ('3', '2019-05-25', '800', '101', '3');
insert into Orders (order_id, sale_date, order_cost, customer_id, seller_id) values ('4', '2020-09-13', '1000', '103', '2');
insert into Orders (order_id, sale_date, order_cost, customer_id, seller_id) values ('5', '2019-02-11', '700', '101', '2');
Truncate table Seller;
insert into Seller (seller_id, seller_name) values ('1', 'Daniel');
insert into Seller (seller_id, seller_name) values ('2', 'Elizabeth');
insert into Seller (seller_id, seller_name) values ('3', 'Frank');
*/

/*
use classwork;
select seller_name 
from Seller
where seller_id not in
(
select seller_id
from Orders
where year(sale_date) = "2020"
)
order by seller_name;
*/