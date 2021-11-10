--Esto es un join
SELECT *
FROM departments, employees
WHERE departments.department_id =
		employees.department_id
ORDER BY employee_id;

SELECT COUNT(*)
FROM departments;

SELECT COUNT(*)
FROM employees;

SELECT COUNT(*)
FROM departments, employees;

SELECT department_name, first_name, last_name
FROM departments, employees;

--usar alias para simplificar la primera consulta. Alias de las tablas 
SELECT *
FROM departments d, employees e
WHERE d.department_id =
		e.department_id
ORDER BY employee_id;

SELECT department_name, first_name, last_name, salary
FROM departments d, employees e
WHERE d.department_id = e.department_id
	AND salary > 5000
ORDER BY employee_id;

--3 tablas

SELECT *
FROM dependents;

SELECT department_name, e.first_name, e.last_name, de.first_name, de.last_name, relationship
FROM departments d, employees e, dependents de
WHERE d.department_id = e.department_id
	AND e.employee_id = de.employee_id
ORDER BY department_name, e.last_name;