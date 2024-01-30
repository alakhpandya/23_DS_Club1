/*
Joins:
inner join: Common rows in both the tables
left join: All the rows of the table to the left (1st table)
right join: All the rows of the table to the right (2nd table)
full outer join: All the rows from both the tables
*/
use moviesdb;
select * from movies;
select * from financials;

select m.movie_id, m.title, f.budget
from movies as m
-- inner join financials f			
-- or 
join financials f	
on m.movie_id = f.movie_id;

select m.movie_id, m.title, f.budget
from movies as m
left join financials f
on m.movie_id = f.movie_id;

select f.movie_id, m.title, f.budget
from movies as m
right join financials f
on m.movie_id = f.movie_id;