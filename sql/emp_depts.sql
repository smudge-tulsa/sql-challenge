select e.emp_no, e.last_name, e.first_name, d.dept_no, d.dept_name
from employees e
join dept_emp de
on (e.emp_no = de.emp_no)
join departments d
on (d.dept_no = de.dept_no)