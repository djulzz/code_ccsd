
# create database henry_movies;
-- use henry_movies;

# Question 01 - a - p58
# -----------------
-- create table director
-- (
-- 	dir_number decimal( 5, 0 ) primary key,
-- 	last_name varchar( 30 ) not null,
-- 	first_name varchar( 30 ) not null,
-- 	YOB decimal(4,0) not null,
-- 	YOD decimal(4,0)
-- );

# Question 01 - b - p58
# -----------------
-- create table movie
-- (
-- 	num decimal(5,0) primary key,
-- 	title varchar(50) not null,
-- 	year decimal(4,0) not null,
-- 	type varchar(30)
-- );


# Question 01 - c - p58
# -----------------
-- ALTER TABLE movie MODIFY type varchar(30) not null;
-- ALTER TABLE movie add dir_number decimal( 5, 0 ) not null;
-- ALTER TABLE movie add critics_rating decimal( 2, 1 );
-- ALTER TABLE movie add mpaa_rating decimal( 2, 1 );
-- ALTER TABLE movie add num_awards_nomi decimal( 1, 0 );

-- # Wendy Remarks, maybe 1 is not enough
-- ALTER TABLE movie add num_awards_won decimal( 1, 0 );
-- # So we bumped that up
-- ALTER TABLE movie MODIFY num_awards_won decimal( 4, 0 );

# Question 1 - d
-- create table movie_star
-- (
-- 	num decimal( 9, 0 ) primary key,
-- 	last_name varchar( 30 ) not null,
-- 	first_name varchar( 30 ) not null,

-- 	birthplace varchar( 200 ) not null,
-- 	YOB decimal( 4, 0 ) not null,
-- 	YOD decimal( 4, 0 )
-- );

# Question 1 - e
-- CREATE TABLE MOVIE_ACTOR_ASSOCIATION 
-- (movie_number decimal(5,0),
-- movie_star_number DECIMAL(9,0),
-- PRIMARY KEY (movie_number, movie_star_number) );

-- insert into director values( 1, 'Scott', 'Tony', 1944, 2012 );
-- insert into movie (num, title, year, type, dir_number ) values( 1, 'Top Gun', 1986, 'Action', 1 );


select title, last_name, first_name from movie, director where ( movie.dir_number = director.dir_number );