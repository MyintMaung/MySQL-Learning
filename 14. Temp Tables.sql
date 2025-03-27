
-- Temporary Tables


create temporary table Temp_table(
staff_id varchar(20),
staff_name varchar (30),
movie_time varchar(20),
movie_name varchar(100)
);


insert into Temp_table values ('s-001', 'Alex', '10:30', 'Supernatural');

select * from Temp_table;


create temporary table salary_over_60k
select * from employee_salary
where salary >= 60000;

select * from salary_over_60k;

