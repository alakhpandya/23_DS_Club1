/*
use as2;
select *
from cinema
where id%2 = 1 and description <> "boring";

Create table If Not Exists employees (emp_id int, name varchar(255), salary int); 
Truncate table employees; 
insert into employees (emp_id, name, salary) values ('1', 'Louis', '6142'); 
insert into employees (emp_id, name, salary) values ('2', 'Den', '11259'); 
insert into employees (emp_id, name, salary) values ('3', 'Alexander', '5374'); 
insert into employees (emp_id, name, salary) values ('4', 'Shelli', '12572'); 
insert into employees (emp_id, name, salary) values ('5', 'Sigal', '6897');
select * from employees;

*/
/*
select emp_id, name, salary, 
round(salary + (salary * 0.20)) as New_salary
from employees;
*/