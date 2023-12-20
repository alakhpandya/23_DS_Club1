use sql50;

/*
19.	Queries Quality and Percentage- Easy

1 year - 2 years- Facebook

SQL Schema:
Create table If Not Exists Queries (query_name varchar(30), result varchar(50), position int,   rating int);
Truncate table Queries;
insert into Queries (query_name, result, position, rating) values ('Dog', 'Golden Retriever', '1', '5');
insert into Queries (query_name, result, position, rating) values ('Dog', 'German Shepherd', '2', '5');
insert into Queries (query_name, result, position, rating) values ('Dog', 'Mule', '200', '1');
insert into Queries (query_name, result, position, rating) values ('Cat', 'Shirazi', '5', '2');
insert into Queries (query_name, result, position, rating) values ('Cat', 'Siamese', '3', '3');
insert into Queries (query_name, result, position, rating) values ('Cat', 'Sphynx', '7', '4');

We define query quality as:
The average of the ratio between query rating and its position.
We also define poor query percentage as:
The percentage of all queries with rating less than 3.
Write an SQL query to find each query_name, the quality and poor_query_percentage.
Both quality and poor_query_percentage should be rounded to 2 decimal places.
Return the result table in any order.
*/
select * from queries;

select query_name,
round(avg(rating/position), 2) as quality,
round(sum(case when rating < 3 then 1 else 0 end)/count(rating), 2)*100
as poor_query_percentage
from queries
group by query_name;
