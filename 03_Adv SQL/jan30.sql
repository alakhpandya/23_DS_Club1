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

-- Get me the movie_id, title & budget sorted by their budget so that the movie with highest budget is on the top and lowest at the bottom.

-- Print actor_id vs. movies names that actor has played a role in. Sort your result in the ascending order of actor_id

-- Print number of movies played by each actor_id sorted in ascending order of actor_id

-- Print number of movies played by each actor. That is, write name of the actor and number of movies played by them in against their names

-- Print the movie titles, industry, budget, revenue & profit (profit = revenue - budget). Sort the result in descending order of profit. Clean the budget & revenue columns
-- so that it becomes easy to compare the profit each movie did (Hint: If all of them are in the same currency and in the same unit (thousand/million/billion etc) then it is 
-- possible to compare the profit of movies with each other)
