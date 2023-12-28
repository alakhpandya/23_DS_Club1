-- Window functions

-- Fetch two employees from each department who joined first;
/*
use hr;
select * from employees;

select department_id, salary
from employees
group by department_id;

with cte as (
	select *,
	row_number() over(partition by department_id) as Row_num
	from employees
	order by department_id
)
select first_name, last_name
from cte
where Row_num <= 2;


select *,
row_number() over(partition by department_id order by hire_date) as Row_num
from employees
order by department_id;
        
-- Get me the heighest salaraied 3 employees from each department

*/

use classwork;
drop table students;
create table students(
		id int primary key,
		student_name varchar(50) not null
);
insert into students values
(1, 'James'),
(2, 'Michael'),
(3, 'George'),
(4, 'Stewart'),
(5, 'Robin');

select * from students;