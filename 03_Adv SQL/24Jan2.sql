use moviesdb;

select * from movies;

select *,
row_number() over(order by imdb_rating desc) as Row_num,
rank() over(order by imdb_rating desc) as Ranking,
dense_rank() over(order by imdb_rating desc) as Dense_Ranking
from movies
order by release_year;

-- Get me the movies ranked in each studio based on their imdb_rating. Sort your result in the ascending order of studios.
select *,
dense_rank() over(partition by studio order by imdb_rating desc) as "rank"
from movies
order by studio;

-- All the aggregated functions are available as window functions
-- Print first movie of each studio
select distinct studio, 
min(release_year) over(partition by studio) as first_movie,
max(release_year) over(partition by studio) as last_movie
from movies;

-- Get me the average imdb_rating of each studio
select distinct(studio),
round(avg(imdb_rating) over(partition by studio), 1) as avg_rating
from movies;

use classwork;
select * from student_score;

select *,
-- lead(score) over() as "Lead"
-- lead(score) over(partition by dep_name) as "Lead"
lead(score) over(partition by dep_name order by score desc) as "Lead",
lag(score) over(partition by dep_name order by score desc) as "Lag"
from student_score
order by dep_name;