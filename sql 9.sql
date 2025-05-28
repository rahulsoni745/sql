create database regex1;
use regex1;
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100)
);

INSERT INTO Departments (DeptID, DeptName) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'HR');
select * from departments;


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Salary DECIMAL(10, 2),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

INSERT INTO Employees (EmpID, EmpName, Salary, DeptID) VALUES
(1, 'Alice', 70000, 1),
(2, 'Bob', 60000, 1),
(3, 'Charlie', 50000, 1),
(4, 'Diana', 55000, 2),
(5, 'Eve', 65000, 2),
(6, 'Frank', 40000, 3);



select * from employees;

select deptid , avg(salary) from employees group by deptid; 
select * from employees as emp
where salary > (select avg(salary)
               from employees as emp4 where emp.deptid=emp4.deptid);
               
-- list department where at least one employee earn more than 60000

select deptname from departments as dep 
where exists 
(select * from employees as e where dep.deptid=e.deptid
                               and e.salary > 60000);           
                                                              
select * from employees 
select depid ,  max(salary) from employees group by deptid ;   
select * from employees as outt
where salary >= 
(select max(salary) from employees as innerr where outt.deptid = innerr.deptid );


                               