-- drop database banking;
-- create database banking;
use banking;
drop table customers;
create table customers(
	customer_id varchar(50) primary key,
	first_name varchar(50) not null,
	last_name varchar(50),
	phone bigint unique,
	address varchar(100),
	dob date,
	is_active varchar(10) check(is_active in ('active', 'inactive'))
);

insert into customers (customer_id, first_name, last_name, phone, address, dob, is_active) values('C1','mohan','agarwal', 786766,'bangalore', '1990-05-07', 'active');
insert into customers values ('C2', 'James', 'Xavier', null, 'Chennai', '1995-05-07', 'active');

insert into customers (customer_id, first_name, last_name, phone, address, dob, is_active) values('C3','sohan','agarwal', 9999999999,'bangalore', '1990-05-07', 'active');
insert into customers (customer_id, first_name, last_name, phone, address, dob, is_active) values(null,'rohan','agarwal', 9999999999,'bangalore', '1990-05-07', 'active');
insert into customers (customer_id, first_name, last_name, phone, address, dob, is_active) values('C2','Anil','agarwal', 9999999999,'bangalore', '1990-05-07', 'active');
insert into customers (customer_id, first_name, last_name, phone, address, dob, is_active) values('C4', null,'agarwal', 9999999999,'bangalore', '1990-05-07', 'active');
insert into customers (customer_id, first_name, last_name, phone, address, dob, is_active) values('C4', "Kirti",'Patel', 1929399499,'bangalore', '1990-05-07', 'Hello!');
select * from customers;
