/*
Print the titles of movies in a way that first character of title of every movie is capitalized and every other character in lower case.
*/

use moviesdb;

select * from movies;

select 
concat(upper(substr(title, 1, 1)), lower(substr(title, 2)))
from movies;

select title, coalesce(imdb_rating, 0)
from movies
order by title;

-- Get me the average rating of all the bollywood movies
select round(avg(imdb_rating), 1) as Average
from movies
where industry = 'Bollywood';

select round(avg(imdb_rating), 1) as Average
from movies
where industry = 'Hollywood';

select industry, round(avg(imdb_rating), 1) as Average
from movies
group by industry;


-- Print the highest, lowest and average ratings of both the industries with industry names
select industry, min(imdb_rating) as Lowest, max(imdb_rating) as Highest, round(avg(imdb_rating), 1) as Average
from movies
group by industry;

-- Get me the average rating of each studio which have produced at least two movies
select studio, round(avg(imdb_rating), 1) as Average
from movies
where studio != ""
group by studio
having count(*) >= 2;
