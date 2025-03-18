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


-- Day 3 --

select concat(first_name, ' ', last_name) as employee_name
from employee_demographics;

select department_name, upper(department_name)
from parks_departments;

select first_name, length(first_name)
from employee_demographics;

select last_name, substring(last_name, 1, 3) as short_name
from employee_demographics;

select employee_id, first_name, salary,
case
	when salary >= 70000 then 'high'
    when salary between 50000 and 69990 then 'medium'
    when salary < 50000 then 'low'
end as salary_rank
from employee_salary;

-- Day4 --

select employee_id, first_name, last_name, age
from employee_demographics
where age > (
    select avg(age) 
    from employee_demographics
);

select employee_id, first_name, last_name, salary, dept_id
from employee_salary as es
left join parks_departments as pd
	on es.dept_id = pd.department_id
where salary > (
    select avg(salary) 
    from employee_salary
);


select es.employee_id, concat(ed.first_name, ' ', ed.last_name) as employee_name, es.salary, es.dept_id
from employee_salary es
join employee_demographics ed on es.employee_id = ed.employee_id
where salary = (
    select max(salary) 
    from employee_salary 
    where dept_id = es.dept_id
);
