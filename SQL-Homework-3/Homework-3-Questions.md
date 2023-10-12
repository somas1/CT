Week 5 - Wednesday Questions 
1. List all customers who live in Texas (use 
JOINs)   
    - select customer.first_name, customer.last_name   
    from customer  
    full join address   
    on customer.address_id = address.address_id    
    where district = 'Texas';

|first_name|last_name|
|----------|---------|
|Jennifer|Davis|
|Kim|Cruz|
|Richard|Mccrary|
|Bryan|Hardison|
|Ian|Still|
    
---

2. Get all payments above $6.99 with the Customer's Full Name 

    - select customer.first_name, customer.last_name, payment.amount   
    from payment  
    full join customer  
    on payment.customer_id = customer.customer_id  
    where payment.amount > 6.99;
    
|first_name|last_name|amount|
|----------|---------|------|
|Douglas|Graf|919.67|
|Mary|Smith|478.86|
|Alfredo|Mcadams|74.94|
|Harold|Martino|81.99|
|Mary|Smith|34.95|
|Mary|Smith|77.95|
|Mary|Smith|980.45|
|Peter|Menard|156.99|
|Peter|Menard|150.99|
|Peter|Menard|156.99|
|Peter|Menard|151.99|
|Peter|Menard|156.99|
|Peter|Menard|154.99|
|Peter|Menard|149.99|
|Peter|Menard|155.99|
|Alvin|Deloach|33.44|
|Peter|Menard|151.99|
|Peter|Menard|149.99|
|Peter|Menard|157.99|
|Peter|Menard|153.99|
|Peter|Menard|153.99|
|Peter|Menard|149.99|
|Peter|Menard|155.99|
|Peter|Menard|153.99|
|Peter|Menard|151.99|
|Peter|Menard|153.99|
|Peter|Menard|149.99|
|Peter|Menard|151.99|
|Peter|Menard|151.99|
|Peter|Menard|158.99|

---
    
3. Show all customers names who have made payments over $175(use subqueries)   
    - select first_name, last_name   
    from customer  
    where customer_id in  
    (select customer_id  
    from payment  
    group by customer_id, amount  
    having sum(amount) > 175  
    or amount > 175)

|first_name|last_name|
|----------|---------|
|Mary|Smith|
|Peter|Menard|
|Douglas|Graf|

---
4. List all customers that live in Nepal (use the city 
table) 
    - select first_name, last_name, city.city, country.country  
      from customer  
      full join address  
      on customer.address_id = address.address_id  
      full join city  
      on address.city_id = city.city_id  
      full join country  
      on city.country_id = country.country_id  
      where country = 'Nepal';
      
      - Kevin Schuler Birgunj, Nepal
--- 
5. Which staff member had the most 
transactions? 
    - select staff.first_name, staff.last_name, count(rental.rental_id) as rentals  
      from staff  
      full join rental  
      on staff.staff_id = rental.staff_id  
      group by staff.staff_id  
      order by rentals desc;  

|first_name|last_name|rentals|
|----------|---------|-------|
|Mike|Hillyer|8040|
|Jon|Stephens|8004|

--Mike Hillyer had the most transactions.
---
  
6. How many movies of each rating are there? 
    - select count(fid) as movies, rating   
      from film_list  
      group by rating;
        
|movies|rating|  
|------|------|  
|194|PG|  
|223|PG-13|  
|194|R|
|209|NC-17|  
|177|G|  


---
7. Show all customers who have made a single payment above $6.99 (Use Subqueries) 
      - select first_name, last_name  
        from customer  
        where customer_id in  
        (select payment.customer_id  
        from payment  
        group by payment.customer_id, payment.amount having payment.amount > 6.99  
        order by payment.amount desc);
        
|first_name|last_name|
|----------|---------|
|Mary|Smith|
|Peter|Menard|
|Harold|Martino|
|Douglas|Graf|
|Alvin|Deloach|
|Alfredo|Mcadams|

        
        
8. How many free rentals did our stores give away?

    - SELECT count(rental_id)  
      FROM rental  
      WHERE rental_id  
      IN (SELECT rental_id  
      FROM payment  
      WHERE amount < 0);
      
      - 14,560 rentals were free