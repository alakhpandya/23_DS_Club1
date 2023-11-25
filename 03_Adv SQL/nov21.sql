/*
use moviesdb;

select * from movies;
*/
-- Problem 1: What if I don't aggreegate?
/*
select industry, imdb_rating
from movies
group by industry;
*/

-- Problem 2: Only one column in group by but more than 2 columns in select and only one column is aggrigated
/*
select industry, studio, max(imdb_rating)
from movies
group by industry, studio
order by industry;
*/
-- create database as2;
-- use as2;

/*
Create table If Not Exists cinema (id int, movie varchar(255), description varchar(255), rating float(2, 1));
Truncate table cinema;
insert into cinema (id, movie, description, rating) values ('1', 'War', 'great 3D', '8.9');
insert into cinema (id, movie, description, rating) values ('2', 'Science', 'fiction', '8.5');
insert into cinema (id, movie, description, rating) values ('3', 'irish', 'boring', '6.2');
insert into cinema (id, movie, description, rating) values ('4', 'Ice song', 'Fantacy', '8.6');
insert into cinema (id, movie, description, rating) values ('5', 'House card', 'Interesting', '9.1');

select * from cinema;
*/

-- create database sql_basic1;
-- use sql_basic1;
/*
Create table If Not Exists Customer (id int, name varchar(25), referee_id int);
Truncate table Customer;
insert into Customer (id, name, referee_id) values ('1', 'Will', null);
insert into Customer (id, name, referee_id) values ('2', 'Jane', null);
insert into Customer (id, name, referee_id) values ('3', 'Alex', '2');
insert into Customer (id, name, referee_id) values ('4', 'Bill', null);
insert into Customer (id, name, referee_id) values ('5', 'Zack', '1');
insert into Customer (id, name, referee_id) values ('6', 'Mark', '2');

select * from Customer;

select name
from Customer
where referee_id <> 2 or referee_id is null;
*/

/*
Create table If Not Exists World (name varchar(255), continent varchar(255), area int, population int, gdp bigint);
Truncate table World;
insert into World (name, continent, area, population, gdp) values ('Afghanistan', 'Asia', '652230', '25500100', '20343000000');
insert into World (name, continent, area, population, gdp) values ('Albania', 'Europe', '28748', '2831741', '12960000000');
insert into World (name, continent, area, population, gdp) values ('Algeria', 'Africa', '2381741', '37100000', '188681000000');
insert into World (name, continent, area, population, gdp) values ('Andorra', 'Europe', '468', '78115', '3712000000');
insert into World (name, continent, area, population, gdp) values ('Angola', 'Africa', '1246700', '20609294', '100990000000');

select * from World;

select name, population, area
from World
where area >= 3000000 or population >= 25000000;
*/

/*
Create table If Not Exists Views (article_id int, author_id int, viewer_id int, view_date date); 
Truncate table Views; 
insert into Views (article_id, author_id, viewer_id, view_date) values ('1', '3', '5', '2019-08-01'); 
insert into Views (article_id, author_id, viewer_id, view_date) values ('1', '3', '6', '2019-08-02'); 
insert into Views (article_id, author_id, viewer_id, view_date) values ('2', '7', '7', '2019-08-01'); 
insert into Views (article_id, author_id, viewer_id, view_date) values ('2', '7', '6', '2019-08-02'); 
insert into Views (article_id, author_id, viewer_id, view_date) values ('4', '7', '1', '2019-07-22'); 
insert into Views (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21'); 
insert into Views (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21');

select * from Views;

select distinct author_id
from Views
where author_id = viewer_id
order by author_id;
*/
/*
drop database IF EXISTS temp;
create database IF NOT EXISTS temp;
use temp;
*/
drop table if exists employees;
create table IF NOT EXISTS employees (
	emp_id int,
    last_name varchar(100),
    first_name varchar(100)    
);
TRUNCATE table employees;

insert into employees values (1, "Raval", "Mayank");
insert into employees(emp_id, last_name, first_name) values (2, "Sheth", "Nishith");
insert into employees(emp_id, first_name) values (3, "Arvind Kumar");

select * from employees;
