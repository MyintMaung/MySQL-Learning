
-- window function --

select 
concat(ed.first_name, ' ', ed.last_name) as employee_name, 
gender, 
avg(salary) over(partition by gender) as avg_salary
from employee_demographics as ed
join employee_salary as es
	on ed.employee_id = es.employee_id;
    
select 
concat(ed.first_name, ' ', ed.last_name) as employee_name, 
gender, salary,
sum(salary) over(partition by gender order by ed.employee_id) as avg_salary
from employee_demographics as ed
join employee_salary as es
	on ed.employee_id = es.employee_id;
    
select 
ed.employee_id,
concat(ed.first_name, ' ', ed.last_name) as employee_name, 
gender, salary,
row_number() over(partition by gender order by salary desc),
rank() over(partition by gender order by salary desc)
from employee_demographics as ed
join employee_salary as es
	on ed.employee_id = es.employee_id;