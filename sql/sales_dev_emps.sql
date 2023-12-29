select emp_no, first_name, last_name
from employees
where emp_no IN
(
	select emp_no
	from dept_emp de
	where dept_no IN
	(
		select dept_no
		from departments d
		where dept_name = 'Sales' or dept_name = 'Development'
	)
)