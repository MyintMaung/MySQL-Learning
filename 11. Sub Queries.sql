

-- sub queries -- 

select *
from employee_demographics
where employee_id in (
	select employee_id 
    from employee_salary
    where dept_id = 1
);

select * 
from employee_salary
where employee_id in (
	select employee_id 
    from employee_demographics
    where age < 30
);

select * 
from employee_demographics
where employee_id in(
	select employee_id
    from employee_salary 
    where salary > 70000
);

select first_name, salary,
(
	select avg(salary)
    from employee_salary
) as avg_salary
from employee_salary
group by salary, first_name ;

select dept_id, count(*) as employee_count
from employee_salary
group by dept_id;

select gender, avg(max_age)
from
(
	select gender, avg(age) as avg_age, max(age) as max_age, min(age) as min_age, count(age) as count_age
    from employee_demographics
    group by gender
) as employee_age;

select gender, max(age) as max_age, 
       (select avg(max_age) 
        from (select max(age) as max_age from employee_demographics group by gender) as subquery) 
        as avg_max_age
from employee_demographics
group by gender;



