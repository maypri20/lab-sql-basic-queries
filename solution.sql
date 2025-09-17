use sakila;
show full tables;   -- Display all available tables in the Sakila database.
SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM film_text;
-- =========
-- Retrieve all the data from the tables actor, film and customer.
select * from actor;
select * from film;
select * from customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
SELECT title from film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name as Language from language;
-- 3.3 List of first names of all employees from the staff table
select * from staff;
SELECT first_name from staff;

-- Retrieve unique release years.
SELECT DISTINCT(release_year) from film;

-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
select * from store;
select count(store_id) from sakila.store;
-- 5.2 Determine the number of employees that the company has.
select count(staff_id) from sakila.staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
select * from inventory;
select * from rental;
select count(distinct(film_id)) from sakila.inventory; 
-- 5.4 Determine the number of distinct last names of the actors in the database.
select distinct(last_name) from sakila.actor;
 -- Retrieve the 10 longest films.
select title from sakila.film
order by length desc
limit 10;

-- 7.1 Retrieve all actors with the first name "SCARLETT".
select * from sakila.actor
where first_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%' and length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT count(title) FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';