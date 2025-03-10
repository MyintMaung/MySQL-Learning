-- Group By --

select gender, avg(age), max(age), min(age), count(gender)
from employee_demographics
group by gender;

select occupation, avg(salary) 
from employee_salary
group by occupation;


-- Order By --

select * from employee_salary;

select * 
from employee_salary
order by  salary, occupation;

select occupation, avg(salary)
from employee_salary
group by occupation
order by avg(salary) , occupation;