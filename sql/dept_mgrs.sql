select d.dept_no, d.dept_name, e.first_name, e.last_name
from departments d, employees e
where dept_no in
(
	select dept_no
	from dept_manager
	where emp_no in
	(
		select emp_no
		from employees
		where employees.emp_no = dept_manager.emp_no
	)
)