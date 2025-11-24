REQUEST 1- SELECT last_name, first_name, employee_id
FROM employees
WHERE last_name LIKE 'T%';

REQUEST 2- SELECT department_id, last_name, first_name, phone_number
FROM employees
WHERE job_id = 'SA_REP' AND hire_date >= '2000-01-01'
ORDER BY last_name ASC;

REQUEST 3- SELECT *
FROM jobs
WHERE min_salary <= 10000
ORDER BY min_salary DESC;

4- SELECT  DISTINCT j.job_id, j.job_title
FROM jobs j
JOIN employees e ON j.job_id = e.job_id
JOIN departments d ON E department_id = d.department_id
  WHERE d.department_name IN ('Marketing', 'Accounting');

5- SELECT d.department_name, d.location_id, e.last_name, e.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.location_id = 1700
ORDER BY d.department_name ASC;

REQUEST- 6
SELECT last_name, first_name
FROM employees
WHERE MONTH(hire_date ) IN ('06', '08')
ORDER BY last_name;

REQUEST- 7
SELECT ROUND(AVG(salary * 12), 2) AS avg_annual_salary
FROM employees;

REQUEST-8
SELECT ROUND(SUM(salary), 0) AS total_salary
FROM employees
WHERE department_id IN (60, 80);

REQUEST- 9
SELECT d.department_id, d.department_name, COUNT(*) AS num_employees
FROM departments d LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT(*) < 4;

REQUEST -10
SELECT d.department_id, d.department_name, COUNT (e.employee_id) AS employees_count
FROM departments d 
LEFT JOIN employees e ON department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY employee_count ASC;

REQUEST- 11
SELECT department_id, department_name
FROM departments d
WHERE department_id NOT IN (
  SELECT DISTINCT department_id
  FROM employees
  WHERE job_id = 'SA_REP'
);

REQUEST- 12
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES ('IT_ASST', 'IT Assistant', 5000, 8000);

REQUEST- 13
UPDATE jobs
SET min_salary = min_salary + 5000;

REQUEST- 14
SELECT *
FROM jobs
ORDER BY job_id ASC;

REQUEST-15
-- ER Diagram corrected

REQUEST- 16
EXEC sp_help ‘departments’ ;

REQUEST- 17
DROP TABLE job_history;

REQUEST- 18
CREATE TABLE sal_history (
  empid     NUMBER NOT NULL,
  firstname VARCHAR2(20),
  lastname  VARCHAR2(25),
  hiredate  DATE,
  sal   DECIMAL (8,2),
CONTSRAINT pk_sal_history PRIMARY KEY (empid)
);

REQUES7- 19
INSERT INTO sal_history
SELECT employee_id, first_name, last_name, hire_date, salary
FROM employees
WHERE employee_id <= 100;

-- Request 20
SELECT *
FROM sal_history;

