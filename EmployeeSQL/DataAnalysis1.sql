-- List employee number, last name, first, name, sex, and salary of each employee
select e.emp_no, last_name, first_name, sex, salary
from employees e
join salaries s
	on e.emp_no = s.emp_no;