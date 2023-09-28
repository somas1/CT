-- 1  How many actors are there with the last name ‘Wahlberg’? 
-- There are 2 actors with the last name 'Wahlberg'
select count(last_name) 
from actor
where last_name = 'Wahlberg'

-- 2  How many payments were made between $3.99 and $5.99? 
-- There are two payments between $3.99 and $5.99.
select count(amount)  
from payment 
where amount between 3.99 and 5.99;

-- 3  What film does the store have the most of? (search in inventory) 
-- There are multiple films with 8 copies in the inventory.
select count(film_id), film_id 
from inventory
group by film_id
order by count(film_id) desc 

-- 4 How many customers have the last name ‘William’? 
-- There are 0 customers with the last name 'William'
select count(*)  
from customer 
where last_name = 'William';



-- 5  What store employee (get the id) sold the most rentals? 
-- Employee with staff_id 1 has sold 8,040 rentals
select staff_id, count(rental_id) as rentals
from rental
group by staff_id
order by rentals desc;

-- 6 How many different district names are there? 
-- There are 378 different district names.
select count(distinct district) from address;

--7 What film has the most actors in it? (use film_actor table and get film_id)
-- The film with id 508 has 15 actors.
select film_id, count(actor_id) from film_actor group by film_id order by count desc 

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
-- There are 21 customers with a last name ending with 'es'.
select count(last_name) from customer where last_name like '%es' 

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  
-- with ids between 380 and 430? (use group by and having > 250) 
-- Three paymount amounts had rentals above 250 for customers with between 380 and 430.

select amount, count(rental_id)
from payment
where customer_id between 380 and 430
group by amount
having count(rental_id) > 250 

-- 10. Within the film table, how many rating categories are there? And what rating has the most  
-- movies total?
-- There are 5 ratings in the film table and the greatest number of movies are rated PG-13.
select rating, count(rating) from film
group by rating
order by count(rating) desc




