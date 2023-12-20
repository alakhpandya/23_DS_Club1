/*
1. Print number of movies played by each actor_id sorted in ascending order of actor_id.
*/
use moviesdb;

/*
2. Print the movie titles, industry and revenue. Sort the result in descending order of revenue. 
Clean the revenue so that it becomes easy to compare the business each movie did 
(Hint: If all of them are in the same currency and in the same unit (thousand/million/billion etc) then it is possible to compare the business of movies with each other)
*/
select * from financials;

select m.title, m.industry, t2.revenue_cleaned as revenue
from 
(
	select movie_id,
	case 
		when unit = "Billions" then round(INR_revenue * 1000, 2)
		when unit = "Thousands" then round(INR_revenue / 1000, 2)
		else round(INR_revenue, 2)
		end as revenue_cleaned
	from
		(select movie_id, 
			case when currency = "USD" then	revenue*80
			else revenue
			end as INR_revenue, unit
		from financials) as t1
) as t2

join movies m on t2.movie_id = m.movie_id

order by t2.revenue_cleaned desc;