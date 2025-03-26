
-- CTE --

with CTE_exmaple (Gender, Avg_salary, Max_salary, Min_salary) as (
select  gender, avg(salary) , max(salary) , min(salary) 
from employee_demographics ed
join employee_salary es
	on ed.employee_id = es.employee_id
group by gender
)
select  *
from CTE_exmaple;


with CTE_example as (
select employee_id, age, gender
from employee_demographics
where age > 30
),
CTE_example2 as (
select employee_id, salary
from employee_salary
where salary > 50000
)
select  *
from CTE_example
join CTE_example2
	on CTE_example.employee_id = CTE_example2.employee_id;