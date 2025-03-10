

select	*
from employee_demographics;

select * 
from parks_and_recreation.employee_demographics;

select employee_id,
first_name,
age,
age + 10 / 10,
gender
from parks_and_recreation.employee_demographics;

select distinct age
from parks_and_recreation.employee_demographics;