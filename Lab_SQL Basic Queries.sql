# Challenge

# Use the sakila database to do the following tasks:

    # Show all tables.


USE sakila;

SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 Titles of all films from the film table
SELECT title FROM film;

-- 3.2. List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

# 5.1 Determine the number of stores that the company has.
SELECT COUNT(1) FROM store;

# 5.2 Determine the number of employees that the company has.
SELECT COUNT(1) FROM staff;

# 5.3 Determine how many films are available for rent and how many have been rented.
SELECT
    (SELECT COUNT(*) FROM film) AS "available for rent", 
    (SELECT COUNT(DISTINCT inventory_id) FROM rental);
   
 # 5.4 Determine the number of distinct last names of the actors in the database. 
 SELECT COUNT(distinct last_name) as "Unique last name" from actor;
 
SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;
 
-- 7.1 Retrieve all actors with the first name "SCARLETT"
SELECT * FROM actor WHERE first_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
SELECT * FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';
 
 
    
/*
    Retrieve all the data from the tables actor, film and customer.

    Retrieve the following columns from their respective tables:
        3.1 Titles of all films from the film table
        3.2. List of languages used in films, with the column aliased as language from the language table
        3.3 List of first names of all employees from the staff table

    Retrieve unique release years.

    Counting records for database insights:
        5.1 Determine the number of stores that the company has.
        5.2 Determine the number of employees that the company has.
        5.3 Determine how many films are available for rent and how many have been rented.
        5.4 Determine the number of distinct last names of the actors in the database.

    Retrieve the 10 longest films.

    Use filtering techniques in order to:

        7.1 Retrieve all actors with the first name "SCARLETT".

        7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
            Hint: use LIKE operator. More information here.

        7.3 Determine the number of films that include Behind the Scenes content

Requirements

    Fork this repo
    Clone it to your machine

Getting Started

Complete the challenges in this readme in a .sqlfile.
Submission

    Upon completion, run the following commands:

git add .
git commit -m "Solved lab"
git push origin master

    Paste the link of your lab in Student Portal.
    */
