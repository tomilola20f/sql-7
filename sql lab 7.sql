use sakila;
#question 1
#showing how many actor whose last _name are not repeated
select actor_id, first_name,last_name,count(last_name) from actor group by last_name having count(last_name) = 1;

#Question 2
# showing actor who are sharing the last_name with another actor
select actor_id, first_name,last_name,count(last_name) from actor group by last_name having count(last_name) > 1;

#question 3
#showing how many rental where processed by each employee
select count(*) from rental where staff_id = 1;
#staff with id 1 the result 8041.
select  count(*) from rental where staff_id = 2;
# staff with id 2 processed 8004.

#Question 4
#finding out how many film were released in one year
select count(*) from film where release_year = 2006;
# there were 1000 movie release in year 2006.

# question 5
#finding out how many movie were there in each rating
select count(*) from film where rating= 'PG';
#there were 194 from PG film.
select count(*) from film where rating = 'G';
# there were 178 from G film.
select count(*) from film where rating ='NC-17';
#there were 210 from NC-17 film.
select count(*) from film where rating= 'PG-13';
#there were 223 from PG-13 film. 
select count(*) from film where rating = 'R';
#there were 195 from R film.
 
# question 6
#what is the length of film for each rating rounding up in 2 decimal number
select cast(avg(length(title)) as decimal(10,2)) from film where rating = 'PG-13';
# the avg length of the film for rating pg-13 is 14.60.
 select cast(avg(length(title)) as decimal(10,2)) from film where rating = 'PG';
 # the avg length of the film PG is 14.15
 select cast(avg(length(title)) as decimal(10,2)) from film where rating = 'G';
 #the avg length of the film G is 14.59. 
 select cast(avg(length(title)) as decimal(10,2)) from film where rating = 'R';
 #the avg length of the film R is 14.16. 
 select cast(avg(length(title)) as decimal(10,2)) from film where rating = 'NC-17';
 #the avg length of the film NC-17 is 13.69.
 
#Question 7
#what movie has mean duration of more than two hours 
 select avg(length) from film where length >= 120;
 #the avg lenth of the duration of film is 152.5172. 