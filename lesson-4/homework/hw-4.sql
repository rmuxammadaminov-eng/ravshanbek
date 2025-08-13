create database homework4
use homework4
CREATE TABLE  Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);


INSERT INTO Employees VALUES
(1, 'John', 20000),
(2, 'Alice', 35000),
(3, 'Mike', 55000),
(4, 'Sara', 65000),
(5, 'Tom', 40000);
SELECT TOP 5 *
FROM Employees;
SELECT DISTINCT salary
FROM Employees
WHERE salary > 4000
select*from Employees 
order by salary
SELECT *
FROM Employees
WHERE Salary >= 60000;
SELECT *
FROM  Employees 
WHERE salary BETWEEN 3000 AND 5500;
SELECT DISTINCT id,name
FROM Employees;
SELECT DISTINCT id,name;
FROM Employees
ORDER BY salary DESC;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)

INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(1, 'Laptop', 'Electronics', 1200.00),
(2, 'Smartphone', 'Electronics', 800.00),
(3, 'Desk', 'Furniture', 300.00),
(4, 'Chair', 'Furniture', 150.00),
(5, 'Monitor', 'Electronics', 250.00),
(6, 'Keyboard', 'Electronics', 70.00),
(7, 'Mouse', 'Electronics', 50.00),
(8, 'Printer', 'Office', 200.00),
(9, 'Headphones', 'Electronics', 100.00),
(10, 'Notebook', 'Stationery', 5.00),
(11, 'Backpack', 'Accessories', 40.00),
(12, 'Water Bottle', 'Accessories', 20.00);
SELECT TOP 10 *
FROM Products
ORDER BY Price DESC;
SELECT Products 
    COALESCE(ProductID, ProductName, Category, Price) AS Name
FROM Products
 SELECT *
FROM Products 
WHERE (price BETWEEN 30 AND 40)
DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NULL,
    LastName VARCHAR(50) NULL,
    DepartmentName VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE,
    Age INT,
    Email VARCHAR(100) NULL,
    Country VARCHAR(50)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentName, Salary, HireDate, Age, Email, Country) VALUES
(1, 'John', 'Doe', 'IT', 55000.00, '2020-01-01', 30, 'johndoe@example.com', 'USA'),
(2, 'Jane', 'Smith', 'HR', 65000.00, '2019-03-15', 28, 'janesmith@example.com', 'USA'),
(3, NULL, 'Johnson', 'Finance', 45000.00, '2021-05-10', 25, NULL, 'Canada'),
(4, 'James', 'Brown', 'Marketing', 60000.00, '2018-07-22', 35, 'jamesbrown@example.com', 'UK'),
(5, 'Patricia', NULL, 'HR', 70000.00, '2017-08-30', 40, NULL, 'USA'),
(6, 'Michael', 'Miller', 'IT', 75000.00, '2020-12-12', 27, 'michaelm@example.com', 'Germany'),
(7, 'Linda', NULL, 'Finance', 48000.00, '2016-11-02', 42, NULL, 'Canada'),
(8, 'David', 'Moore', 'Marketing', 85000.00, '2021-09-01', 29, 'davidm@example.com', 'UK'),
(9, 'Elizabeth', 'Taylor', 'HR', 60000.00, '2019-05-18', 31, 'elizabetht@example.com', 'USA'),
(10, 'William', NULL, 'IT', 64000.00, '2020-04-10', 26, NULL, 'Germany'),
(11, NULL, 'Thomas', 'Finance', 47000.00, '2017-01-25', 38, NULL, 'Canada'),
(12, 'Joseph', 'Jackson', 'Marketing', 78000.00, '2016-09-30', 44, 'josephj@example.com', 'UK'),
(13, 'Karen', 'White', 'HR', 59000.00, '2018-06-10', 33, 'karenw@gmail.com', 'USA'),
(14, 'Steven', NULL, 'IT', 71000.00, '2021-07-15', 24, NULL, 'Germany'),
(15, 'Nancy', 'Clark', 'Finance', 45000.00, '2020-02-20', 27, 'nancyc@example.com', 'Canada'),
(16, 'George', 'Lewis', 'Marketing', 80000.00, '2019-11-10', 36, 'georgel@example.com', 'UK'),
(17, 'Betty', NULL, 'HR', 55000.00, '2017-04-05', 41, NULL, 'USA'),
(18, 'Samuel', 'Walker', 'IT', 72000.00, '2021-03-22', 23, 'samuelw@example.com', 'Germany'),
(19, 'Helen', 'Hall', 'Finance', 49000.00, '2018-10-16', 34, 'helenh@example.com', 'Canada'),
(20, NULL, 'Allen', 'Marketing', 90000.00, '2015-08-11', 50, NULL, 'UK'),
(21, 'Betty', 'Young', 'HR', 53000.00, '2020-05-17', 28, 'bettyy@gmail.com', 'USA'),
(22, 'Frank', NULL, 'IT', 67000.00, '2021-02-02', 26, 'frankk@example.com', 'Germany'),
(23, 'Deborah', 'Scott', 'Finance', 47000.00, '2019-07-09', 29, NULL, 'Canada'),
(24, 'Matthew', 'Green', 'Marketing', 76000.00, '2021-01-15', 30, 'matthewg@example.com', 'UK'),
(25, NULL, 'Adams', 'HR', 54000.00, '2020-06-21', 27, NULL, 'USA'),
(26, 'Paul', 'Nelson', 'IT', 71000.00, '2018-12-03', 37, 'pauln@example.com', 'Germany'),
(27, 'Margaret', NULL, 'Finance', 46000.00, '2020-08-19', 25, 'margaretc@example.com', 'Canada'),
(28, 'Anthony', 'Mitchell', 'Marketing', 82000.00, '2021-04-10', 29, NULL, 'UK'),
(29, 'Lisa', 'Perez', 'HR', 60000.00, '2021-03-05', 24, 'lisap@example.com', 'USA'),
(30, NULL, 'Roberts', 'IT', 69000.00, '2019-09-24', 32, NULL, 'Germany'),
(31, 'Jessica', 'Gonzalez', 'Finance', 47000.00, '2017-12-13', 38, 'jessicag@gamil.com', 'Canada'),
(32, 'Brian', NULL, 'Marketing', 85000.00, '2018-11-05', 35, NULL, 'UK'),
(33, 'Dorothy', 'Evans', 'HR', 59000.00, '2019-06-11', 31, 'dorothye@example.com', 'USA'),
(34, 'Matthew', 'Carter', 'IT', 70000.00, '2020-01-29', 29, 'matthewc@example.com', 'Germany'),
(35, NULL, 'Martinez', 'Finance', 51000.00, '2021-06-06', 22, NULL, 'Canada'),
(36, 'Daniel', 'Perez', 'Marketing', 83000.00, '2021-07-01', 30, 'danielp@example.com', 'UK'),
(37, 'Catherine', 'Roberts', 'HR', 60000.00, '2020-09-19', 27, 'catheriner@gmail.com', 'USA'),
(38, 'Ronald', NULL, 'IT', 68000.00, '2017-02-04', 39, NULL, 'Germany'),
(39, 'Angela', 'Jenkins', 'Finance', 52000.00, '2018-04-23', 34, 'angelaj@example.com', 'Canada'),
(40, 'Gary', 'Wright', 'Marketing', 87000.00, '2021-01-10', 29, NULL, 'UK');


DROP TABLE IF EXISTS Products_Discounted;

SELECT *
FROM Employees
WHERE Department IN ('HR', 'IT', 'Finance');
CREATE TABLE customers2 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);
INSERT INTO customers2 (CustomerID, CustomerName, City, PostalCode, Email, Phone) VALUES
(1, 'Alice Johnson', 'New York', '10021', 'alice@example.com', '555-1234'),
(2, 'Bob Smith', 'Los Angeles', '90001', 'bob@example.com', '555-5678'),
(3, 'Carol White', 'New York', '10010', 'carol@example.com', '555-8765'),
(4, 'David Black', 'Chicago', '60601', 'david@example.com', '555-4321'),
(5, 'Eve Brown', 'Los Angeles', '90015', 'eve@example.com', '555-0000');
SELECT *
FROM customers2
ORDER BY City ASC, PostalCode DESC;
CREATE TABLE Products2 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    SalesAmount DECIMAL(15, 2)  -- total sales amount for the product
);
INSERT INTO Products (ProductID, ProductName, Price, SalesAmount) VALUES
(1, 'Product A', 20.00, 5000.00),
(2, 'Product B', 15.00, 7000.00),
(3, 'Product C', 30.00, 3000.00),
(4, 'Product D', 25.00, 9000.00),
(5, 'Product E', 10.00, 4000.00),
(6, 'Product F', 22.00, 6000.00);
SELECT TOP (5) *
FROM Products
ORDER BY SalesAmount DESC;
--SELECT 
--    FirstName + ' ' + LastName AS FullName
--FROM Employees;

--alter table  Employees add lastname varchar(50)
--alter table Employees add firstnmae varchar(50)
SELECT DISTINCT Category, ProductName, Price
FROM Products
WHERE Price > 50;
CREATE TABLE Products3 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);
INSERT INTO Products3 (ProductID, ProductName, Price) VALUES
(1, 'Product A', 5.00),
(2, 'Product B', 15.00),
(3, 'Product C', 50.00),
(4, 'Product D', 100.00),
(5, 'Product E', 1.00),
(6, 'Product F', 60.00);
SELECT *
FROM Products
WHERE Price < 0.1 * (SELECT AVG(Price) FROM Products);


