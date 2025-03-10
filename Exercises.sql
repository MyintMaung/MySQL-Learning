

select * from employee_salary;

select first_name, salary
from employee_salary
where salary > 50000;

select first_name, salary
from employee_salary
where salary > 50000
order by salary desc, first_name;

select dept_id, avg(salary)
from employee_salary
group by dept_id
order by avg(salary) desc, dept_id;

select dept_id, avg(salary) as avg_salary
from employee_salary
group by dept_id
having avg(salary) > 50000
order by avg_salary desc, dept_id;

select dept_id, avg(salary) as avg_salary
from employee_salary
where salary > 40000
group by dept_id;

select dept_id, avg(salary) as avg_salary
from employee_salary
group by dept_id
having avg_salary > 50000
order by avg(salary) desc, dept_id
limit 3;

select first_name as Name, avg(salary) as monthly_salary
from employee_salary
group by first_name
order by monthly_salary desc, Name
limit 5;



