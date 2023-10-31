-- SQL Operations
-- The SQL standard defines many operations, such as:
-- SELECT
-- FROM
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- LIMIT

-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- There are 2 actors with the last name Wahlberg. After entering in the information above and searching the database only 2 last names of Wahlberg came up. Double checked using the * selector in SELECT coming up with again 2 for the last name Wahlberg.


-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- There are no payments between 3.99 and 5.99. The database sates there is no data matching the criteria. Also used just count in the SELECT and got 0.


-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, title
FROM film
WHERE film_id = 1000;

-- The store has the most of Zorro Ark. Found the most movies in inventory and then looked under the film_id in the film table category to find the name using the film_id.


-- 4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William';
-- There are no customers with the last name Williams. I got no data with the code above, then double checked using W% to get all the last names in customer starting with W and there were similar names, but no Williams. 


-- 5. What store employee (get the id) sold the most rentals?
SELECT COUNT(payment_id), staff_id
FROM payment
GROUP BY staff_id
ORDER BY COUNT(payment_id)DESC;

SELECT first_name, last_name
FROM staff
WHERE staff_id = '2';

-- Jon Stephens sold the most rentals.
-- Found out hho sold th most and then looked up the employee by there id with the the most rental individually then used their id number to pull up their name.


-- 6. How many different district names are there?
SELECT COUNT(DISTINCT district) 
FROM address;
-- GROUP BY district;
-- There are 378 districts used distinct to vut out duplicates


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

SELECT film_id, title
FROM film
WHERE film_id = 508;

-- Found the film id and got 508 with the most at 15 and then used the film_id to find the film Lambs Cincinnati.


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT *
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;
-- Selected all from customer and looked up the last names ending in 'es' AND from store id 1 to get 13. 


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)



-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating, COUNT(film_id)
FROM film
GROUP BY rating
ORDER BY COUNT(film_id) DESC;
-- Searched the film table to find the rating adn count, and total films and then grouped by film id to get the count to get 224 rated at PG-13 with 5 rating categories 




