
-- stored procedure

create procedure large_salary()
select * from employee_salary
where salary > 50000;

call large_salary();

delimiter $$
create procedure large_salary_dept()
begin
	select * from employee_salary
	where salary > 50000;
	select * from employee_salary
	where dept_id = 1;
end $$ 
delimiter;

select * from employee_salary;

call large_salary_dept();


delimiter $$
create procedure large_salary_id(id int)
begin
	select first_name, salary 
    from employee_salary
    where employee_id = id;
end $$ delimiter ;

call large_salary_id(1)


