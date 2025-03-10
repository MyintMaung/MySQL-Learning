

-- Having and where

select occupation, avg(salary) 
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 50000;