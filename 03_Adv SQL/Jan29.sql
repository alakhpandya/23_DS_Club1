use moviesdb;

select * from financials;
/*
if currency is in USD then budget = budget*80 else budget = budget
*/
select movie_id,
-- if(currency="USD", budget*80, budget) as budget_inr,
case
	when currency = "USD" then budget*80
    else budget
end as budget_inr
from financials;