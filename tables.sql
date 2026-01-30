

-- Step 1: Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Step 2: Create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Step 3: Insert sample data
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO employees VALUES
(101, 'Alice', 50000, 2),
(102, 'Bob', 45000, 1),
(103, 'Charlie', 60000, 2),
(104, 'David', 40000, NULL);

-- Step 4: Create a VIEW using JOIN
CREATE VIEW employee_department_view AS
SELECT 
    e.employee_id,
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- Step 5: Query data from the view
SELECT * FROM employee_department_view;

-- Step 6: Filtering using VIEW
SELECT * 
FROM employee_department_view
WHERE salary > 45000;

-- Step 7: Sorting using VIEW
SELECT * 
FROM employee_department_view
ORDER BY salary DESC;

-- Step 8: Attempt inserting through VIEW (may fail depending on DB rules)
INSERT INTO employee_department_view 
(employee_id, employee_name, salary, department_name)
VALUES (105, 'Eva', 48000, 'IT');

-- Step 9: Drop the VIEW safely
DROP VIEW IF EXISTS employee_department_view;

-- Step 10: Recreate the VIEW
CREATE VIEW employee_department_view AS
SELECT 
    e.employee_id,
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;
