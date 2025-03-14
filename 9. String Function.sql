
-- string funcntion --

select first_name, length(first_name)
from employee_demographics
order by 2;

select first_name, upper(first_name)
from employee_demographics;

select first_name, lower(first_name)
from employee_demographics;


-- Trim --

select trim('        sky          ');

select first_name, 
left(first_name, 3),
right(first_name, 3),
substring(first_name, 4, 2),
birth_date,
substring(birth_date, 6,2) as birth_month
from employee_demographics;


-- Replace -- 

select first_name, replace(first_name, 'a', 'z')
from employee_demographics;

-- Locate -- 
select first_name, locate('b', first_name)
from employee_demographics;

-- concat --

select concat(first_name, ' ', last_name) as employee_name
from employee_demographics
order by first_name, last_name;