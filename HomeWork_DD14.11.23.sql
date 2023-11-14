

-- Home Work DD. 14.11.2023

-- Задача : Найти количество сотрудников из департамента с айди 60, которые зарабатывают больше средней зарплаты по компании

use hr;

select
	count(*) as employees_quantity
from employees 
WHERE salary < (SELECT 
				AVG(salary) avg_salary
				FROM employees);

