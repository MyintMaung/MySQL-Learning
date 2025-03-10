
-- Where Clause

select * from employee_salary;

select * 
from employee_salary
where salary >= 50000;

select * 
from employee_demographics
where age >= 40;

select * 
from employee_demographics
where first_name = 'Leslie';


-- AND OR NOT-- logical operators

select * 
from employee_demographics
where gender = 'Male' and age >= 30 ;

select * 
from employee_demographics
where gender = 'Male' or age >= 30 ;

select * 
from employee_demographics
where (first_name = 'Tom' and age = 36) or age>50 ;

-- Like Statement --
-- % use for anything and _ use for specific

select * 
from employee_demographics
where first_name like 'j%' ;

select * 
from employee_demographics
where first_name like '%y%' ;

select * 
from employee_demographics
where first_name like 'a__%' ;
