select last_name, count(*)
from employees
group by last_name
order by count(*) desc