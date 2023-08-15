-- 1. List employee number, last name, first, name, sex, and salary of each employee
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s
	on e.emp_no = s.emp_no;

-- 2. List first name, last name, and hire date for employees hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- 3. List manager of each department with department number, department name, employee number, and first/last names
select d.dept_no, de.dept_name, d.emp_no, e.last_name, e.first_name
from dept_manager d
join employees e
on (d.emp_no = e.emp_no)
	join departments de
	on (d.dept_no = de.dept_no);

-- 4. List department number for each employee with emp. number, last name, first name, dept. name
select de.dept_no, e.emp_no, e.last_name, e.first_name, de.dept_name
from departments de
join dept_emp d
on (de.dept_no = d.dept_no)
	join employees e
	on (d.emp_no = e.emp_no);

-- 5. List first name, last name, and sex for employees Hercules B.
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6. List each employee in Sales department, including emp. number, last name and first name
select e.emp_no, e.last_name, e.first_name
from employees e
join dept_emp d
on (e.emp_no = d.emp_no)
	join departments de
	on (d.dept_no = de.dept_no)
	where de.dept_name = 'Sales';

-- 7. List each employee in Sales and Development deparments
select e.emp_no, e.last_name, e.first_name, de.dept_name
from employees e
join dept_emp d
on (e.emp_no = d.emp_no)
	join departments de
	on (d.dept_no = de.dept_no)
	where de.dept_name = 'Sales' or de.dept_name = 'Development';

-- 8. List frequency counts, in descending order, of all employee last names
select last_name, count(last_name) as Frequency
from employees
group by last_name
order by count(last_name) desc;