CREATE DATABASE employee_db;
use employee_db;

CREATE TABLE Departments (
      department_id INT PRIMARY KEY,
      department_name VARCHAR(100)
);
    
    
CREATE TABLE Employees (
      employee_id INT PRIMARY KEY,
      name VARCHAR(100),
      age INT,
      department_id INT,
      FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    );
    
    
insert into Departments( department_id, department_name)
values
(1, "IT"),
(2, "Sales"),
(3, "Customer Service"),
(4, "Financing");

INSERT INTO Employees (employee_id, name, age, department_id)
VALUES
	(1,'Bruce Wayne', 35, 1), 
	(2,'Clark Kent', 32, 3),   
	(3,'Peter Parker', 28, 3), 
	(4,'Diana Prince', 30, 2), 
	(5,'Tony Stark', 40, 1),   
	(6,'Bruce Banner', 38, 4), 
	(7,'Barry Allen', 29, 4),
	(8,'Selina Kyle', 30, 2);
    
SELECT * from departments;
SELECT * from employees;

SELECT DISTINCT d.department_name 
from employees e
join departments d on e.department_id = d.department_id;

SELECT department_id, count(employee_id) as total_employees
from employees
GROUP BY department_id;

SELECT name, age, department_id
FROM Employees
WHERE age BETWEEN 25 AND 30;