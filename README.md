#  Creating and Using SQL Views

## 📌 Objective
To understand how SQL Views are created, used, and managed for reusable and secure data access.

## 🛠 Tools Used
- MySQL Workbench  
- Alternative tools: PostgreSQL / SQLite / BigQuery Sandbox  

## 📚 Concepts Covered
- Creating SQL Views
- Using JOINs inside Views
- Filtering and sorting data from Views
- Updating data through Views
- Dropping and recreating Views
- Real-world usage of Views in reporting

## 🧪 What I Did
1. Created `employees` and `departments` tables.
2. Inserted sample records.
3. Wrote a complex JOIN query.
4. Converted the JOIN query into a SQL VIEW.
5. Queried the VIEW for data retrieval.
6. Applied filtering and sorting on the VIEW.
7. Tested insert operations through the VIEW.
8. Dropped and recreated the VIEW safely.

## 📊 Why Views Are Important
- Simplify complex queries
- Improve security by hiding base tables
- Used heavily in reports and dashboards
- Reusable query logic

## ❓ Interview Questions & Answers

### 1. What is a SQL View?
A SQL View is a virtual table created using a SELECT query.

### 2. Difference between View and Table?
| View | Table |
|-----|------|
| Virtual | Physical |
| Stores query | Stores data |
| Less storage | Uses storage |

### 3. Are views stored physically?
No, views do not store data physically.

### 4. Can we update data through a view?
Yes, but only under certain conditions (no joins, no aggregates, etc.).

### 5. Why are views used in enterprises?
- Data security
- Simplified reporting
- Code reusability
- Performance optimization

## ✅ Final Outcome
This task helped me understand how SQL Views act as reusable and secure query layers in real-world database systems.
