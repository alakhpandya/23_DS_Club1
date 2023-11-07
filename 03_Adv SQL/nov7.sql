use moviesdb;

select * from movies;

-- How many movies are there in the movies table?
select count(title) from movies;
-- or
select count(*) from movies;

-- For how many movies, imdb_rating is given (they are not null)?
select count(imdb_rating) from movies;

-- Print number of movies with missing imdb_rating
select count(title)
from movies
where imdb_rating is null;

-- How many bollywood movies are there in data?
select count(*)
from movies
where industry = "Bollywood";

-- Get me the total number of movies released in the years 2013, 2017 & 2022
select count(*)
from movies
-- where release_year = 2013 or release_year = 2017 or release_year = 2022;
where release_year in (2013, 2017, 2022);

-- Print all the movie titles along with their rarings by ranking them from 1 to 39 based on their ratings.
select title, imdb_rating 
from movies
order by imdb_rating desc;

-- Print all the movie titles along with their ratings and release years such that older movies come at the top & latest at the end
select title, imdb_rating, release_year
from movies
-- order by release_year asc; OR
-- order by release_year; OR
order by 3;

-- Get me the 5 best movies as per their ratings.
select *
from movies
order by imdb_rating desc
limit 5;

/*
We have organized an award ceremony for these movies. Top 3 movies are getting the bumper prizes which have been already announced. Now we want to give condolence prizes
to the movies which stood from rank 4th till 10th according to their imdb_rating. You are asked to print titles and ratings of these movies.
*/
select *
from movies
order by imdb_rating desc
limit 7 offset 4;

-- Print minimum rating, maximum rating & average rating of the data
select min(imdb_rating) as "Minimum Rating", max(imdb_rating) "Maximum Rating", round(avg(imdb_rating), 1) "Average Rating"
from movies;

-- Print average rating of "Vinod Chopra Films"
select round(avg(imdb_rating), 1) as Avg_rating
from movies
where studio = "Vinod Chopra Films";

/*
We dicided to change the scale of the rating to 0 to 5 instead of from 1 to 10 and we also want to have name of the studios attached with the title separated by pipe 
symbol (|). Print the new titles and new ratings as new_title and new_rating. Note: In order to get new_rating, we need to half the present rating of the movies.
Example:
new_title								new_rating
K.G.F:Chapter 2 | Hombale Films			4.2
*/
select concat(title, " | ", studio) as new_title,
round(imdb_rating/2, 1) as new_rating
from movies;

-- Let's print just the first 3 character of every title:
-- select substr(title, 2, 3)
/*
select upper(title), lower(studio)
from movies;
*/

/*
Print the titles of movies in a way that first character of title of every movie is capitalized and every other character in lower case.
*/
