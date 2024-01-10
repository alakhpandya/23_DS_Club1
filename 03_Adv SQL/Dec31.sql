use hr;
select *, 
row_number() over(partition by department_id order by hire_date) as row_num
from employees;

-- Get me the top-earning 3 employees from each department. The output should be like this:
/*
Id		Name			Department Name		Salary
101		Neena Kochar	Human Resource		15000
*/

with cte as (
	select employee_id as Id, concat(first_name, " ", last_name) as Name, salary, department_id,
	-- row_number() over(partition by department_id order by salary desc) as top_earners 
    rank() over(partition by department_id order by salary desc) as top_earners
	from employees
)
select cte.Id, cte.Name, d.department_name, cte.salary
from cte
join departments d
on d.department_id = cte.department_id
where top_earners <= 3;

select employee_id as Id, concat(first_name, " ", last_name) as Name, salary, department_id,
row_number() over(partition by department_id order by salary desc) as top_earners, 
rank() over(partition by department_id order by salary desc) as ranking
from employees;