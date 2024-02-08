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

select a.name, count(m.title)
from movies m
join movie_actor ma on m.movie_id=ma.movie_id
join actors a on ma.actor_id = a.actor_id
group by a.name;

/*
Print the movie titles, industry, budget, revenue & profit (profit = revenue - budget). Sort the result in descending order of profit. Clean the budget & revenue columns
so that it becomes easy to compare the profit each movie did (Hint: If all of them are in the same currency and in the same unit (thousand/million/billion etc) then it is 
possible to compare the profit of movies with each other)
*/
select m.movie_id, m.title, f.profit
from movies m
join (
	select movie_id, budget_inr_millions, revenue_inr_millions, 
	revenue_inr_millions - budget_inr_millions as profit
	from
	(
		select movie_id, budget, currency, budget_inr, unit, 
		case
			when unit="Thousands" then budget_inr/1000
			when unit="Billions" then budget_inr*1000
			else budget_inr
		end as budget_inr_millions,
		case
			when unit="Thousands" then revenue_inr/1000
			when unit="Billions" then revenue_inr*1000
			else revenue_inr
		end as revenue_inr_millions
		from 
		(
			select movie_id, budget, currency,
			if(currency="USD", budget*80, budget) as budget_inr,
			unit,
			revenue,
			if(currency="USD", revenue*80, revenue) as revenue_inr
			from financials
		) as f2
	) as f3
) as f
on f.movie_id = m.movie_id
order by f.profit desc;
/*


*/