-- Limit --

select occupation, avg(salary) 
from employee_salary 
group by occupation 
order by occupation, avg(salary) 
limit 5;


-- aliasing --

select occupation, avg(salary) as avg_salary 
from employee_salary 
group by occupation 
order by occupation, avg(salary) 
limit 5;


select * from employee_salary;