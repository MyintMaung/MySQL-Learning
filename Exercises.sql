-- Day1 -- 

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

-- Day 2 --

select concat(es.first_name, ' ', es.last_name) as employee_name, pd.department_name
from employee_demographics ed
right join employee_salary es
	on ed.employee_id = es. employee_id
left join parks_departments pd
	on es.dept_id = pd.department_id
order by employee_name, department_name;


select concat(ed.first_name, ' ', ed.last_name) as employee_name, pd.department_name
from employee_demographics ed
right join employee_salary es
	on ed.employee_id = es. employee_id
left join parks_departments pd
	on es.dept_id = pd.department_id
order by employee_name, department_name;

select concat(first_name, ' ', last_name) as gg
from employee_demographics
union all
select department_name
from parks_departments;


select es.employee_id, concat(ed.first_name, ' ', ed.last_name) as employee_name, es.salary
from employee_demographics ed
left join employee_salary es
	on ed.employee_id = es.employee_id;

