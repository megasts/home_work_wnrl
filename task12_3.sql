select distinct district 
from address
where district like 'K%a' and district not like '% %'; 

select *
from payment
where cast(payment_date AS DATE) between '2005-06-15' and '2005-06-18' and amount > 10;

select *
from rental
order by rental_date desc, rental_id desc
limit 5;

select replace(LOWER(first_name),'ll', 'pp') as имя, replace(LOWER(last_name),'ll', 'pp') as фамилия
from customer
where first_name like 'Kelly' or first_name like 'Willie';

select SUBSTRING_INDEX(email , '@', 1) as name_Email, SUBSTRING_INDEX(email , '@', -1) as сервер_Email
from customer;

select left(email, position('@' in email)-1) as имя_Email, 
right(email, CHAR_LENGTH(email)-position('@' in email)) as сервер_Email
from sakila.customer;

select CONCAT(UPPER(left(email, 1)), LOWER(SUBSTR(left(email, position('@' in email)-1), 2, CHAR_LENGTH(left(email, position('@' in email)-1)))) ) as имя_Email,
CONCAT(UPPER(left(right(CHAR_LENGTH(email)-position('@' in email)), 1)), 
LOWER(SUBSTR(right(email, CHAR_LENGTH(email)-position('@' in email)), 1, CHAR_LENGTH(email)-position('@' in email)))) as сервер_Email
from sakila.customer;


