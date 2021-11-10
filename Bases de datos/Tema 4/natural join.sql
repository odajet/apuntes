SELECT *
FROM employees, departments;

SELECT *
FROM employees CROSS JOIN departments;

--Son iguales, producto cartesiano, producto cruzado

--Ahora join natural

SELECT *
FROM employees e, departments d
WHERE e.department_id = d.department_id;

SELECT *
FROM employees NATURAL JOIN departments;

--En lugar del natural join usar mejor este
SELECT *
FROM employees JOIN departments USING (department_id);

--Join de una tabla consigo misma (serviría para claves reflexivas)
SELECT employee_id, first_name, last_name, manager_id
FROM employees;

SELECT e1.employee_id, e1.first_name, e1.last_name, e1.manager_id,
e2.employee_id, e2.first_name, e2.last_name
FROM employees e1 JOIN employees e2 
			ON (e1.manager_id = e2.employee_id); 

--Seleccionar el nombre del departamento, el nombre y los apellidos de aquellos empleados cuyo nombre de departamento
--empieza por A
 
--Clave primaria se llama igual que la externa
SELECT department_name, first_name, last_name
FROM employees JOIN departments USING (department_id)
WHERE department_name LIKE('A%');

--Clave primaria suponemos que no se llama igual que al externa
SELECT department_name, first_name, last_name
FROM departments d JOIN employees e
		ON (d.department_id = e.department_id)
WHERE department_name ILIKE('A%');

--Selecciona el nombre de la región, el nombre y apellidos de cada empleado
SELECT region_name, first_name, last_name
FROM employees JOIN departments USING (department_id)
		JOIN locations USING (location_id)
		JOIN countries USING (country_id)
		JOIN regions USING (region_id);