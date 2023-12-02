/*
use banking;
drop table Articles;
CREATE TABLE Articles ( 
	articleId INT PRIMARY KEY AUTO_INCREMENT, 
	articleTitle VARCHAR(60), 
	dateCreated TIMESTAMP, 
	datePublished TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 

set time_zone = "+00:00";
insert into Articles (articleTitle, dateCreated, datePublished) values ('A', "2020-08-20 16:25:00", "2020-08-21 16:25:00");
insert into Articles (articleTitle, dateCreated, datePublished) values ('B', "2020-10-21 10:20:00", "2020-12-21 18:00:00");
insert into Articles (articleTitle, dateCreated) values ('C', '2022-12-19 13:00:00');
insert into Articles (articleTitle, dateCreated) values ('D', '2022-02-24 18:00:00');
select * from Articles;

set time_zone = "+05:30";
select * from Articles;
*/

-- Joins
-- Get me the movies sorted by their budget so that the movie with highest budget is on the top and lowest at the bottom.
/*
use moviesdb;
select * from movies;

select m.movie_id, m.title, m.studio, m.imdb_rating, f.budget
from movies as m
join financials as f
on m.movie_id = f.movie_id
order by f.budget desc;

select * from actors;
select * from movie_actor;
*/

-- 2. Print actor_id, actor name and movies names that actor has played a role in. Sort your result in the ascending order of actor_id.
select a.actor_id, a.name, m.title
from actors a
join movie_actor ma on a.actor_id = ma.actor_id
join movies m on ma.movie_id = m.movie_id
order by a.actor_id;