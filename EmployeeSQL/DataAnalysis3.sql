select d.dept_no, d.emp_no, e.first_name, e.last_name, de.dept_name
from dept_manager d
join employees e
on (d.emp_no = e.emp_no)
	join departments de
	on (d.dept_no = de.dept_no);