-- Q1-2
SELECT COUNT(*)
FROM actor
WHERE last_name = 'Wahlberg'

-- Q2-5607
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99

-- Q3-525
SELECT store_id, film_id, COUNT(film_id)
FROM inventory
GROUP BY store_id, film_id
ORDER BY COUNT(film_id) DESC;

-- Q4-0 
SELECT COUNT(*)
FROM customer
WHERE last_name = 'William';

-- Q5-#2@7304
SELECT staff_id, COUNT(*)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(*) DESC;

-- Q6-378
SELECT COUNT(DISTINCT district)
FROM address;

-- Q7-508@15
SELECT film_id, COUNT(actor_id) AS number_of_actors
FROM film_actor
GROUP BY film_id
ORDER BY number_of_actors DESC;

-- Q8-#1 @ 13 with 'es'
SELECT store_id, COUNT(*)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id;

-- Q9-3 payments
SELECT amount, COUNT(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*)>250;

-- Q10-5 cats, PG-13 @ 223
SELECT rating, COUNT(*)
FROM film
GROUP BY rating;