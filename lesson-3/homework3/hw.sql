--HOMEWORK3
--BULK INSERT is a Transact-SQL (T-SQL) command in SQL Server that allows you to import large volumes of data from a data file (such as a .csv, .txt, or .dat) directly into a SQL Server table.

--The main purpose of BULK INSERT is to efficiently load large amounts of data into a SQL Server table with minimal overhead and better performance than row-by-row inserts.
--CSV (Comma-Separated Values),A plain text format where each line represents a data row, and columns are separated by commas.
--Commonly used for data exchange and supported by most applications.TXT (Text File)
--A general text file that may use various delimiters like tabs (.tsv) or pipes (|) to separate columns.
--XML (eXtensible Markup Language),A hierarchical data format. SQL Server can import XML files using the OPENXML, XML data type, or BULK INSERT with proper format file.
--JSON (JavaScript Object Notation),A lightweight data format. SQL Server supports importing JSON data using the OPENROWSET and JSON_VALUE/OPENJSON functions.
CREATE DATABASE homework3
create table products (products_id int ,products_name varchar(50),price decimal(10,2))

insert into products values (2,'grosse',10),(2,'perffeto',12),(3,'persil',14)
select*from products
--NULL
--Meaning: The column can have missing or unknown values.

--Usage: You use NULL when it's acceptable for a column to have no value.

--Example:sql,Copy,Edit
--NOT NULL
--Meaning: The column must always have a value — it cannot be left empty.

--Usage: Use NOT NULL when a column is required.
ALTER TABLE products
ADD CONSTRAINT uq_products_name UNIQUE (products_name);
-- This query retrieves the names and email addresses of all active customers
-- who have made a purchase in the last 30 days.
--SELECT name, email
--FROM customers
--WHERE status = 'active'
--  AND last_purchase_date >= CURRENT_DATE - INTERVAL '30 days';
--The IDENTITY column in SQL Server is used to create an auto-incrementing numeric column, typically for primary keys. It automatically generates unique values when new rows are inserted into a table—eliminating the need to manually specify a unique value each time.

--Purpose of IDENTITY Column:
--Auto-Incrementing Values
--It ensures each new row gets a unique value in the column without manual input.

--Primary Key Generation
--Often used to generate surrogate keys (e.g., customer IDs, order numbers) that uniquely identify each row.

--Improved Data Integrity
--Prevents duplicate key values and supports referential integrity when used as a foreign key in related tables.
-- 1. Create the database
-- 1. Create the database
CREATE DATABASE homework3;

-- 2. Use the database (only needed in systems like SQL Server or MySQL)
USE homework3;

-- 3. Create the products table
CREATE TABLE products (
    products_id INT,
    products_name VARCHAR(50),
    price DECIMAL(10, 2)
);

-- 4. Insert data into the products table
INSERT INTO products (products_id, products_name, price) 
VALUES 
    (2, 'grosse', 10),
    (2, 'perffeto', 12),
    (3, 'persil', 14);

-- 5. Select all from products
SELECT * FROM products;
-- 1. Create the database
CREATE DATABASE homework3;

-- 2. Switch to the newly created database
USE homework3;

-- 3. Create the products table
CREATE TABLE products (
    products_id INT,
    products_name VARCHAR(50),
    price DECIMAL(10, 2)
);

-- 4. Insert sample data into products table
INSERT INTO products (products_id, products_name, price) VALUES
    (2, 'grosse', 10),
    (2, 'perffeto', 12),
    (3, 'persil', 14);

-- 5. Retrieve all records from products table
SELECT * FROM products;
-- 1. Create the database
CREATE DATABASE homework3;

-- 2. Use the database
USE homework3;

-- 3. Create the products table
CREATE TABLE products (
    products_id INT,
    products_name VARCHAR(50),
    price DECIMAL(10, 2)
);

-- 4. Insert data into products
INSERT INTO products (products_id, products_name, price) VALUES
    (2, 'grosse', 10),
    (2, 'perffeto', 12),
    (3, 'persil', 14);

-- 5. Select all data from products
SELECT * FROM products;

-- 6. Create the categories table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) UNIQUE
);

--It's a column property that automatically generates unique numbers for new rows.

--Usually used for primary keys.

--You don’t have to manually specify values when inserting data; SQL Server increments the value automatically.
bulk insert homework3
BULK INSERT Products
FROM 'C:\Data\products.txt'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 1
);
--PRIMARY KEY
--Uniqueness: Ensures that each value in the column(s) is unique.

--Nullability: Cannot contain NULL values; every row must have a value.

--Number per table: Only one primary key allowed per table.

--Purpose: Uniquely identifies each row in the table.

--Index: Creates a clustered index by default (in most databases, like SQL Server).

--UNIQUE KEY (Unique Constraint)
--Uniqueness: Ensures all values in the column(s) are unique.

--Nullability: Can contain NULL values, but the rules about multiple NULLs depend on the database:

--In SQL Server, multiple NULLs are allowed.

--In some other databases, behavior may differ.

--Number per table: Can have multiple unique keys in a table.

--Purpose: Enforce uniqueness on columns that are not primary keys.

--Index: Creates a non-clustered index by default (in SQL Server).
ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive CHECK (Price > 0);
ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;
SELECT products_id, products_name, ISNULL(price, 0) AS price, Stock
FROM Products;
BULK INSERT Products
FROM 'C:\Data\products.txt'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 1
);
ALTER TABLE Products
ADD CategoryID INT;

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);
--Explain the differences between PRIMARY KEY and UNIQUE KEY
--Feature	PRIMARY KEY	UNIQUE KEY
--Uniqueness	Yes	Yes
--Allows NULLs	No	Yes (may allow multiple NULLs)
--Number per table	One	Multiple
--Default index	Clustered index (usually)	Non-clustered index (usually)
--Purpose	Identifies each row uniquely	Enforces uniqueness on columns
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Age INT,
    CONSTRAINT CHK_Age CHECK (Age >= 18)
);
CREATE TABLE SampleIdentityTable (
    ID INT IDENTITY(100, 10) PRIMARY KEY,
    Description VARCHAR(100)
);
CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)  -- Composite primary key on two columns
);
CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)  -- Composite primary key on two columns
);
SELECT ISNULL(NULL, 'DefaultValue'); -- Returns 'DefaultValue'
SELECT COALESCE(NULL, NULL, 'FirstNonNull', 'AnotherValue'); -- Returns 'FirstNonNull'
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Email VARCHAR(255) UNIQUE
);
ALTER TABLE Products
ADD CategoryID INT;

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
ON DELETE CASCADE
ON UPDATE CASCADE;



