select
	Row_number() over(order by salary desc) as row1,
	salary,
    Row_number() over(partition by emp_no order by salary desc) as row2
from salaries;

# EX2)
select
	Row_number() over(partition by emp_no order by salary desc) as row1,
	salary,
    Row_number() over(partition by emp_no order by salary ) as row2
    
from salaries ;