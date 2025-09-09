SELECT * FROM employee;
SELECT * FROM department;
SELECT * FROM manager;
SELECT * FROM project; 
SELECT * FROM json;  
SELECT * FROM django;
-- fetch the employee name and dept name they belong to

SELECT  e.emp_name , d.dept_name
FROM employee e
join department d on e.dept_id = d.dept_id;


-- fetch the employee id and dept id they belong to
SELECT e.emp_id, e.dept_id
FROM employee e
JOIN department d ON e.dept_id = d.dept_id;


-- fetch the employee id and dept name they belong to 

select e.emp_id , d.dept_name
from employee e
join department d on e.dept_id = d.dept_id;

-- Display employee names along with their manager's name.
select e.emp_name , m.manager_name
from employee e
join manager m on e.manager_id = m.manager_id;

-- Fetch the employee id and department name they belong to 
select e.emp_id, d.dept_name
from employee e
join department d on e.dept_id = d.dept_id;

-- List all projects and the employee ids assigned as team members.
select project_name ,team_member_id
from project ;

-- Get employee id, manager name, and department name for all employees

select e.emp_id, m.manager_name, d.dept_name
from employee e
join manager m on e.manager_id = m.manager_id
join department d on e.dept_id = d.dept_id;

--  Retrieve project names and the department names of the employees working on them.
select p.project_name, d.dept_name, e.emp_name
from project p
join  employee e on p.team_member_id = e.emp_id
join department d on e.dept_id = d.dept_id ;

-- Show all employees who do not have a manager assigned.
select emp_id, emp_name
from employee
where manager_id is null;







