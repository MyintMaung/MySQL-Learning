
-- Inner Join --

select dem.employee_id, concat(dem.first_name, ' ' , dem.last_name) as employee_name, age, occupation, salary 
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
where salary > 50000
order by salary desc, dem.employee_id, employee_name, age, occupation;
    
select column_name, data_type
from information_schema.columns
where table_name = 'employee_demographics';


-- Outer join

select * from employee_demographics;

select * from employee_salary;

select dem.employee_id, concat(dem.first_name, ' ' , dem.last_name) as employee_name, age, occupation, salary 
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id
order by salary desc, dem.employee_id, employee_name, age, occupation;

select * 
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    
-- Self Join --

select 
emp_1.employee_id as employee_SantaID, concat (emp_1.first_name, ' ' , emp_1.last_name) as Santa_Name, 
emp_2.employee_id as employee_ReceiverID, concat (emp_2.first_name, ' ' , emp_2.last_name) as Receiver_Name
from employee_salary as emp_1
join employee_salary as emp_2
	on emp_1.employee_id + 1 = emp_2.employee_id;
    
    
-- Join Mutliple tables together

select * from parks_departments;

select ed.employee_id, concat(ed.first_name, ' ', ed.last_name) as employee_name, ed.age, ed.gender, es.occupation, es.salary, pd.department_name
from employee_demographics ed
join employee_salary es
	on ed.employee_id = es.employee_id
join parks_departments pd
	on es.dept_id = pd.department_id
where es.salary > 50000
order by es.salary desc, ed.employee_id, employee_name, ed.age, ed.gender, es.occupation, pd.department_name
limit 3;