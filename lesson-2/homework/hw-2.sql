create database lesson2
use lesson2
create table employee
CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);
INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'Alice Johnson', 55000.00);

UPDATE Employees
SET Salary = 7000.00
WHERE EmpID = 1;
delete from Employees 
where EMPid=2
--What it does: Removes specific rows from a table based on a WHERE condition.

--Can be rolled back: ✅ Yes (if within a transaction).

--Table remains: ✅ Yes, structure and data (except deleted rows) stay intact.

--Usage example:
--What it does: Deletes all rows from a table very quickly.

--Can be rolled back: ⚠️ Depends on DBMS (e.g., not in MySQL without transaction).

--Table remains: ✅ Yes, structure stays, but all data is lost.

--Usage example:
--What it does: Completely removes the table (structure + data).

--Can be rolled back: ❌ No (irreversible in most cases).

--Table remains: ❌ No, the table no longer exists.

--Usage example:
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);
ALTER TABLE Employees
ADD Department VARCHAR(50);

ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 1, 'Human Resources' UNION ALL
SELECT 2, 'Finance' UNION ALL
SELECT 3, 'Marketing' UNION ALL
SELECT 4, 'IT Support' UNION ALL
SELECT 5, 'Sales';
UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;
TRUNCATE TABLE Employees;
ALTER TABLE Employees
DROP COLUMN Department;
EXEC sp_rename 'Employees', 'StaffMembers';
DROP TABLE Departments;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT
);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2) CHECK (Price > 0),
    StockQuantity INT
);
ALTER TABLE Products
ADD CONSTRAINT chk_price_positive CHECK (Price > 0);
ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;
ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;
EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (1, 'Wireless Mouse', 'Electronics', 25.99, 100);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (2, 'Office Chair', 'Furniture', 150.00, 50);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (3, 'Water Bottle', 'Accessories', 12.49, 200);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (4, 'Bluetooth Speaker', 'Electronics', 45.00, 80);

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES (5, 'Notebook', 'Stationery', 3.99, 500);
SELECT *
INTO Products_Backup
FROM Products;
EXEC sp_rename 'Products', 'Inventory';
ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;
ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000, 5);








