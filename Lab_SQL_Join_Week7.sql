-- List number of films per category.

select ca.name,count(fi.film_id) from film_category fc
join film fi
on fi.film_id=fc.film_id
join category ca
on ca.category_id=fc.category_id
group by ca.name;


-- Display the first and last names, as well as the address, of each staff member.

select st.first_name,st.last_name,stli.address,stli.city,stli.country from staff st
join staff_list stli
on staff_id=stli.ID;

-- Display the total amount rung up by each staff member in August of 2005.

-- ??????????

-- List each film and the number of actors who are listed for that film.

select f.title,count(a.actor_id) as number_of_actors from film_actor a
join film f
on a.film_id=f.film_id
group by f.title;

-- Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name.


select c.first_name,c.last_name,sum(p.amount) as sum_amount from payment p
join customer c
on c.customer_id=p.customer_id
group by c.last_name,first_name
order by last_name asc;



