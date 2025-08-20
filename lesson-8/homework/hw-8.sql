CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    StockQuantity INT
);

INSERT INTO Products VALUES
(1, 'Laptop', 1200.00, 'Electronics', 30),
(2, 'Smartphone', 800.00, 'Electronics', 50),
(3, 'Tablet', 400.00, 'Electronics', 40),
(4, 'Monitor', 250.00, 'Electronics', 60),
(5, 'Keyboard', 50.00, 'Accessories', 100),
(6, 'Mouse', 30.00, 'Accessories', 120),
(7, 'Chair', 150.00, 'Furniture', 80),
(8, 'Desk', 200.00, 'Furniture', 75),
(9, 'Pen', 5.00, 'Stationery', 300),
(10, 'Notebook', 10.00, 'Stationery', 500),
(11, 'Printer', 180.00, 'Electronics', 25),
(12, 'Camera', 500.00, 'Electronics', 40),
(13, 'Flashlight', 25.00, 'Tools', 200),
(14, 'Shirt', 30.00, 'Clothing', 150),
(15, 'Jeans', 45.00, 'Clothing', 120),
(16, 'Jacket', 80.00, 'Clothing', 70),
(17, 'Shoes', 60.00, 'Clothing', 100),
(18, 'Hat', 20.00, 'Accessories', 50),
(19, 'Socks', 10.00, 'Clothing', 200),
(20, 'T-Shirt', 25.00, 'Clothing', 150),
(21, 'Lamp', 60.00, 'Furniture', 40),
(22, 'Coffee Table', 100.00, 'Furniture', 35),
(23, 'Book', 15.00, 'Stationery', 250),
(24, 'Rug', 90.00, 'Furniture', 60),
(25, 'Cup', 5.00, 'Accessories', 500),
(26, 'Bag', 25.00, 'Accessories', 300),
(27, 'Couch', 450.00, 'Furniture', 15),
(28, 'Fridge', 600.00, 'Electronics', 20),
(29, 'Stove', 500.00, 'Electronics', 15),
(30, 'Microwave', 120.00, 'Electronics', 25),
(31, 'Air Conditioner', 350.00, 'Electronics', 10),
(32, 'Washing Machine', 450.00, 'Electronics', 15),
(33, 'Dryer', 400.00, 'Electronics', 10),
(34, 'Hair Dryer', 30.00, 'Accessories', 100),
(35, 'Iron', 40.00, 'Electronics', 50),
(36, 'Coffee Maker', 50.00, 'Electronics', 60),
(37, 'Blender', 35.00, 'Electronics', 40),
(38, 'Juicer', 55.00, 'Electronics', 30),
(39, 'Toaster', 40.00, 'Electronics', 70),
(40, 'Dishwasher', 500.00, 'Electronics', 20);
select  ProductID, count(*) as fjrhf from Products group by  ProductID
select Category,avg(price) as denefn from Products group by Category
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(50),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

--2. Insert 40 Rows into Customers Table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, PostalCode, Country) VALUES
(1, 'John', 'Doe', 'johndoe@gmail.com', '555-1234', '123 Elm St', 'New York', 'NY', '10001', 'USA'),
(2, 'Jane', 'Smith', 'janesmith@yahoo.com', '555-2345', '456 Oak St', 'Los Angeles', 'CA', '90001', 'USA'),
(3, 'Alice', 'Johnson', 'alicej@outlook.com', '555-3456', '789 Pine St', 'Toronto', 'ON', 'M4B1B3', 'Canada'),
(4, 'Bob', 'Brown', 'bobbrown@hotmail.com', '555-4567', '101 Maple St', 'Vancouver', 'BC', 'V5K0A1', 'Canada'),
(5, 'Charlie', 'Davis', 'charliedavis@gmail.com', '555-5678', '202 Birch St', 'Sydney', 'NSW', '2000', 'Australia'),
(6, 'David', 'Martinez', 'davidm@live.com', '555-6789', '303 Cedar St', 'Melbourne', 'VIC', '3000', 'Australia'),
(7, 'Emily', 'Garcia', 'emilyg@yahoo.com', '555-7890', '404 Redwood St', 'London', 'England', 'SW1A 1AA', 'UK'),
(8, 'Frank', 'Hernandez', 'frankh@outlook.com', '555-8901', '505 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'),
(9, 'Grace', 'Lopez', 'gracel@gmail.com', '555-9012', '606 Aspen St', 'Birmingham', 'England', 'B1 1AA', 'UK'),
(10, 'Helen', 'Gonzalez', 'heleng@yahoo.com', '555-0123', '707 Fir St', 'Berlin', 'BE', '10117', 'Germany'),
(11, 'Irene', 'Perez', 'irenep@hotmail.com', '555-1234', '808 Maple Ave', 'Munich', 'BY', '80331', 'Germany'),
(12, 'Jack', 'Wilson', 'jackw@live.com', '555-2345', '909 Oak Ave', 'Hamburg', 'HH', '20095', 'Germany'),
(13, 'Kim', 'Anderson', 'kima@gmail.com', '555-3456', '111 Pine Ave', 'Paris', '�le-de-France', '75001', 'France'),
(14, 'Liam', 'Thomas', 'liamt@yahoo.com', '555-4567', '222 Cedar Ave', 'Lyon', 'Auvergne-Rh�ne-Alpes', '69001', 'France'),
(15, 'Megan', 'Taylor', 'megant@outlook.com', '555-5678', '333 Redwood Ave', 'Marseille', 'Provence-Alpes-C�te Azur', '13001', 'France'),
(16, 'Nathan', 'Moore', 'nathanm@hotmail.com', '555-6789', '444 Willow Ave', 'Tokyo', 'TK', '100-0001', 'Japan'),
(17, 'Olivia', 'Jackson', 'oliviaj@gmail.com', '555-7890', '555 Birch Ave', 'Osaka', 'OS', '530-0001', 'Japan'),
(18, 'Paul', 'White', 'paulw@yahoo.com', '555-8901', '666 Maple Blvd', 'Kyoto', 'KY', '600-8001', 'Japan'),
(19, 'Quincy', 'Lee', 'quincyl@outlook.com', '555-9012', '777 Oak Blvd', 'Seoul', 'SO', '04547', 'South Korea'),
(20, 'Rachel', 'Harris', 'rachelh@hotmail.com', '555-0123', '888 Pine Blvd', 'Busan', 'BU', '48058', 'South Korea'),
(21, 'Sam', 'Clark', 'samc@gmail.com', '555-1234', '999 Cedar Blvd', 'Incheon', 'IC', '22382', 'South Korea'),
(22, 'Tina', 'Allen', 'tinaallen@yahoo.com', '555-2345', '1010 Redwood Blvd', 'Mexico City', 'CMX', '01000', 'Mexico'),
(23, 'Ursula', 'Scott', 'ursulas@outlook.com', '555-3456', '1111 Willow Blvd', 'Guadalajara', 'JAL', '44100', 'Mexico'),
(24, 'Victor', 'Adams', 'victora@hotmail.com', '555-4567', '1212 Birch Blvd', 'Monterrey', 'NLE', '64000', 'Mexico'),
(25, 'Walter', 'Baker', 'walterb@live.com', '555-5678', '1313 Oak Blvd', 'New York', 'NY', '10001', 'USA'),
(26, 'Xander', 'Nelson', 'xandern@gmail.com', '555-6789', '1414 Cedar Blvd', 'Los Angeles', 'CA', '90001', 'USA'),
(27, 'Yvonne', 'Carter', 'yvonnec@yahoo.com', '555-7890', '1515 Maple Dr', 'Chicago', 'IL', '60601', 'USA'),
(28, 'Zane', 'Mitchell', 'zanem@outlook.com', '555-8901', '1616 Redwood Dr', 'Houston', 'TX', '77001', 'USA'),
(29, 'Anna', 'Roberts', 'annar@hotmail.com', '555-9012', '1717 Willow Dr', 'Sydney', 'NSW', '2000', 'Australia'),
(30, 'Ben', 'King', 'benk@live.com', '555-0123', '1818 Birch Dr', 'Melbourne', 'VIC', '3000', 'Australia'),
(31, 'Chloe', 'Green', 'chloeg@gmail.com', '555-1234', '1919 Oak Dr', 'Toronto', 'ON', 'M4B1B3', 'Canada'),
(32, 'Daniel', 'Evans', 'daniele@yahoo.com', '555-2345', '2020 Cedar Dr', 'Vancouver', 'BC', 'V5K0A1', 'Canada'),
(33, 'Ella', 'Collins', 'ellac@outlook.com', '555-3456', '2121 Redwood Dr', 'London', 'England', 'SW1A 1AA', 'UK'),
(34, 'Finn', 'Morris', 'finnm@hotmail.com', '555-4567', '2222 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'),
(35, 'Grace', 'Lee', 'gracel@live.com', '555-5678', '2323 Birch St', 'Berlin', 'BE', '10117', 'Germany'),
(36, 'Holly', 'Martinez', 'hollym@gmail.com', '555-6789', '2424 Oak St', 'Munich', 'BY', '80331', 'Germany'),
(37, 'Ian', 'Robinson', 'ianr@yahoo.com', '555-7890', '2525 Cedar St', 'Warsaw', 'WA', '00-001', 'Poland'),
(38, 'Jasmine', 'Walker', 'jasminew@outlook.com', '555-8901', '2626 Redwood St', 'Lisbon', 'LI', '1100-148', 'Portugal'),
(39, 'Kyle', 'Young', 'kyley@hotmail.com', '555-9012', '2727 Willow St', 'Pittsburgh', 'PA', '15201','USA'),
(40, 'Liam', 'Harris', 'liamh@live.com', '555-0123', '2828 Birch St', 'Richmond', 'VA', '23220','USA');
SELECT *
FROM Customers
WHERE City LIKE 'L%';
SELECT ProductName
FROM Products
WHERE ProductName LIKE '%er';
select *FROM customers where country like '%A'
select max(price) as wfh from Products
SELECT ProductName,
       StockQuantity,
       CASE
           WHEN StockQuantity < 30 THEN 'Low Stock'
           ELSE 'Sufficient'
       END AS StockStatus
FROM Products;
SELECT Country, COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country
ORDER BY TotalCustomers DESC;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    CONSTRAINT fk_customer
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    CONSTRAINT fk_product
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);



-- Insert 40 rows into Orders with random dates and years
INSERT INTO Customers (CustomerID, CustomerName, Country)
VALUES 
(1, 'Customer 1', 'USA'),
(2, 'Customer 2', 'Canada'),
(3, 'Customer 3', 'UK'),
(4, 'Customer 4', 'Germany'),
(5, 'Customer 5', 'France'),
(6, 'Customer 6', 'Italy'),
(7, 'Customer 7', 'Spain'),
(8, 'Customer 8', 'Mexico'),
(9, 'Customer 9', 'Brazil'),
(10, 'Customer 10', 'India'),
(11, 'Customer 11', 'Japan'),
(12, 'Customer 12', 'China'),
(13, 'Customer 13', 'Australia'),
(14, 'Customer 14', 'Russia'),
(15, 'Customer 15', 'South Korea'),
(16, 'Customer 16', 'Netherlands'),
(17, 'Customer 17', 'Sweden'),
(18, 'Customer 18', 'Norway'),
(19, 'Customer 19', 'Denmark'),
(20, 'Customer 20', 'Poland'),
(21, 'Customer 21', 'Argentina'),
(22, 'Customer 22', 'Chile'),
(23, 'Customer 23', 'Colombia'),
(24, 'Customer 24', 'Peru'),
(25, 'Customer 25', 'Venezuela'),
(26, 'Customer 26', 'Thailand'),
(27, 'Customer 27', 'Vietnam'),
(28, 'Customer 28', 'Philippines'),
(29, 'Customer 29', 'Indonesia'),
(30, 'Customer 30', 'Malaysia'),
(31, 'Customer 31', 'Singapore'),
(32, 'Customer 32', 'South Africa'),
(33, 'Customer 33', 'Egypt'),
(34, 'Customer 34', 'Turkey'),
(35, 'Customer 35', 'Greece'),
(36, 'Customer 36', 'Portugal'),
(37, 'Customer 37', 'New Zealand'),
(38, 'Customer 38', 'Ireland'),
(39, 'Customer 39', 'Switzerland'),
(40, 'Customer 40', 'Belgium');

SELECT 
    MIN(Quantity) AS MinQuantity,
    MAX(Quantity) AS MaxQuantity
FROM Orders;
SELECT DISTINCT o.CustomerID
FROM Orders o
LEFT JOIN Invoices i ON o.CustomerID = i.CustomerID
WHERE o.OrderDate >= '2023-01-01' AND o.OrderDate < '2023-02-01'
  AND i.CustomerID IS NULL;


  CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    CustomerID INT,
    InvoiceDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Invoices (InvoiceID, CustomerID, InvoiceDate, TotalAmount) VALUES
(1, 1, '2023-01-05', 150.00),
(2, 2, '2023-01-07', 200.00),
(3, 3, '2023-01-10', 250.00),
(4, 4, '2023-01-12', 300.00),
(5, 5, '2023-01-15', 350.00),
(6, 6, '2023-01-18', 400.00),
(7, 7, '2023-01-20', 450.00),
(8, 8, '2023-01-23', 500.00),
(9, 9, '2023-01-25', 550.00),
(10, 10, '2023-01-28', 600.00),
(11, 11, '2023-02-02', 150.00),
(12, 12, '2023-02-04', 200.00),
(13, 13, '2023-02-07', 250.00),
(14, 14, '2023-02-09', 300.00),
(15, 15, '2023-02-11', 350.00),
(16, 16, '2023-02-13', 400.00),
(17, 17, '2023-02-15', 450.00),
(18, 18, '2023-02-17', 500.00),
(19, 19, '2023-02-19', 550.00),
(20, 20, '2023-02-21', 600.00),
(21, 21, '2023-02-24', 150.00),
(22, 22, '2023-02-26', 200.00),
(23, 23, '2023-02-28', 250.00),
(24, 24, '2023-03-02', 300.00),
(25, 25, '2023-03-04', 350.00),
(26, 26, '2023-03-06', 400.00),
(27, 27, '2023-03-08', 450.00),
(28, 28, '2023-03-10', 500.00),
(29, 29, '2023-03-12', 550.00),
(30, 30, '2023-03-14', 600.00),
(31, 31, '2023-03-17', 150.00),
(32, 32, '2023-03-19', 200.00),
(33, 33, '2023-03-21', 250.00),
(34, 34, '2023-03-23', 300.00),
(35, 35, '2023-03-25', 350.00),
(36, 36, '2023-03-27', 400.00),
(37, 37, '2023-03-29', 450.00),
(38, 38, '2023-03-31', 500.00),
(39, 39, '2023-04-02', 550.00),
(40, 40, '2023-04-04', 600.00);

CREATE TABLE Products_Discounted (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    StockQuantity INT
);

INSERT INTO Products_Discounted VALUES
(1, 'Gaming Laptop', 950.00, 'Electronics', 25),
(2, 'High-End Smartphone', 750.00, 'Electronics', 45),
(2, 'Smartphone', 750.00, 'Electronics', 45),
(3, 'Convertible Tablet', 350.00, 'Electronics', 35),
(4, 'Ultra-Wide Monitor', 220.00, 'Electronics', 55),
(5, 'Mechanical Keyboard', 45.00, 'Accessories', 90),
(6, 'Wireless Mouse', 25.00, 'Accessories', 110),
(7, 'Ergonomic Chair', 130.00, 'Furniture', 75),
(7, 'Chair', 130.00, 'Furniture', 75),
(8, 'Standing Desk', 190.00, 'Furniture', 70),
(9, 'Luxury Pen', 4.50, 'Stationery', 280),
(10, 'Leather Notebook', 9.00, 'Stationery', 480),
(11, 'Laser Printer', 160.00, 'Electronics', 20),
(12, 'DSLR Camera', 480.00, 'Electronics', 35),
(13, 'LED Flashlight', 20.00, 'Tools', 190),
(14, 'Designer Shirt', 28.00, 'Clothing', 140),
(15, 'Slim Fit Jeans', 40.00, 'Clothing', 110),
(15, 'Jeans', 40.00, 'Clothing', 110),
(16, 'Winter Jacket', 70.00, 'Clothing', 60),
(17, 'Running Shoes', 55.00, 'Clothing', 90),
(18, 'Wool Hat', 18.00, 'Accessories', 45),
(19, 'Thermal Socks', 9.00, 'Clothing', 180),
(20, 'Graphic T-Shirt', 22.00, 'Clothing', 140),
(20, 'T-Shirt', 22.00, 'Clothing', 140),
(21, 'Desk Lamp', 55.00, 'Furniture', 35),
(22, 'Marble Coffee Table', 95.00, 'Furniture', 30),
(23, 'Hardcover Book', 13.00, 'Stationery', 230),
(24, 'Persian Rug', 85.00, 'Furniture', 50),
(25, 'Glass Cup', 4.50, 'Accessories', 470),
(26, 'Leather Bag', 22.00, 'Accessories', 270),
(27, 'Recliner Couch', 420.00, 'Furniture', 10),
(28, 'Smart Fridge', 570.00, 'Electronics', 15),
(29, 'Gas Stove', 460.00, 'Electronics', 12),
(30, 'Compact Microwave', 100.00, 'Electronics', 20),
(31, 'Split Air Conditioner', 320.00, 'Electronics', 8),
(32, 'Front-Load Washing Machine', 410.00, 'Electronics', 12),
(33, 'High-Efficiency Dryer', 370.00, 'Electronics', 8),
(34, 'Ionic Hair Dryer', 27.00, 'Accessories', 90),
(35, 'Steam Iron', 38.00, 'Electronics', 45),
(36, 'Espresso Maker', 45.00, 'Electronics', 55),
(37, 'Portable Blender', 32.00, 'Electronics', 35),
(38, 'Cold Press Juicer', 50.00, 'Electronics', 28),
(39, 'Smart Toaster', 36.00, 'Electronics', 65),
(40, 'Compact Dishwasher', 470.00, 'Electronics', 18);

SELECT ProductName FROM Products
UNION ALL
SELECT ProductName FROM Products_Discounted;
SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;

SELECT 
    YEAR(OrderDate) AS OrderYear,
    AVG(TotalAmount) AS AverageOrderAmount
FROM Orders
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear;
SELECT 
    ProductName,
    CASE 
        WHEN Price < 100 THEN 'Low'
        WHEN Price BETWEEN 100 AND 500 THEN 'Mid'
        WHEN Price > 500 THEN 'High'
    END AS PriceGroup
FROM Products;
-- Step 1: Create the table
CREATE TABLE city_population (
    district_id INT,
    district_name VARCHAR(30),
    population DECIMAL(10, 2),
    year VARCHAR(20)
);

-- Step 2: Insert data into the table
INSERT INTO city_population (district_id, district_name, population, year) VALUES 
(1, 'Chilonzor', 2500, '2012'),
(2, 'Yakkasaroy', 1500, '2012'),
(3, 'Mirobod', 3000, '2012'),
(4, 'Yashnobod', 1000, '2012'),
(5, 'Bektemir', 2000, '2012'),
(1, 'Chilonzor', 2800, '2013'),
(2, 'Yakkasaroy', 1900, '2013'),
(3, 'Mirobod', 2000, '2013'),
(1, 'Yashnobod', 5000, '2013'),
(5, 'Bektemir', 1500, '2013');
-- Create the new table with pivoted data
SELECT 
    district_id,
    district_name,
    [2012],
    [2013]
INTO Population_Each_Year
FROM (
    SELECT 
        district_id,
        district_name,
        population,
        year
    FROM city_population
) AS SourceTable
PIVOT (
    SUM(population)
    FOR year IN ([2012], [2013])
) AS PivotTable;

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2)
);

INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SaleAmount) VALUES
(1, 1, 1, '2023-01-01', 150.00),
(2, 2, 2, '2023-01-02', 200.00),
(3, 3, 3, '2023-01-03', 250.00),
(4, 4, 4, '2023-01-04', 300.00),
(5, 5, 5, '2023-01-05', 350.00),
(6, 6, 6, '2023-01-06', 400.00),
(7, 7, 7, '2023-01-07', 450.00),
(8, 8, 8, '2023-01-08', 500.00),
(9, 9, 9, '2023-01-09', 550.00),
(10, 10, 10, '2023-01-10', 600.00),
(11, 1, 1, '2023-01-11', 150.00),
(12, 2, 2, '2023-01-12', 200.00),
(13, 3, 3, '2023-01-13', 250.00),
(14, 4, 4, '2023-01-14', 300.00),
(15, 5, 5, '2023-01-15', 350.00),
(16, 6, 6, '2023-01-16', 400.00),
(17, 7, 7, '2023-01-17', 450.00),
(18, 8, 8, '2023-01-18', 500.00),
(19, 9, 9, '2023-01-19', 550.00),
(20, 10, 10, '2023-01-20', 600.00),
(21, 1, 2, '2023-01-21', 150.00),
(22, 2, 3, '2023-01-22', 200.00),
(23, 3, 4, '2023-01-23', 250.00),
(24, 4, 5, '2023-01-24', 300.00),
(25, 5, 6, '2023-01-25', 350.00),
(26, 6, 7, '2023-01-26', 400.00),
(27, 7, 8, '2023-01-27', 450.00),
(28, 8, 9, '2023-01-28', 500.00),
(29, 9, 10, '2023-01-29', 550.00),
(30, 10, 1, '2023-01-30', 600.00),
(31, 1, 2, '2023-02-01', 150.00),
(32, 2, 3, '2023-02-02', 200.00),
(33, 3, 4, '2023-02-03', 250.00),
(34, 4, 5, '2023-02-04', 300.00),
(35, 5, 6, '2023-02-05', 350.00),
(36, 6, 7, '2023-02-06', 400.00),
(37, 7, 8, '2023-02-07', 450.00),
(38, 8, 9, '2023-02-08', 500.00),
(39, 9, 10, '2023-02-09', 550.00),
(40, 10, 1, '2023-02-10', 600.00);
SELECT 
    ProductID, 
    SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY ProductID;


-----------join----------------
CREATE TABLE Categories (
    CatID INT PRIMARY KEY,
    CatName VARCHAR(50)
);

CREATE TABLE Products1 (
    ProdID INT PRIMARY KEY,
    ProdName VARCHAR(50),
    CatID INT,
    FOREIGN KEY (CatID) REFERENCES Categories(CatID)
);
SELECT ProductName
FROM Products
WHERE ProductName LIKE '%oo%';
SELECT 
    year,
    [Bektemir],
    [Chilonzor],
    [Yakkasaroy]
INTO Population_Each_City
FROM (
    SELECT 
        district_name,
        population,
        year
    FROM city_population
    WHERE district_name IN ('Bektemir', 'Chilonzor', 'Yakkasaroy')
) AS SourceTable
PIVOT (
    SUM(population)
    FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS PivotTable;
SELECT TOP 3
    CustomerID,
    SUM(TotalAmount) AS TotalSpent
FROM Invoices
GROUP BY CustomerID
ORDER BY TotalSpent DESC;
SELECT 
    district_id,
    district_name,
    population,
    year
FROM
    Population_Each_Year
UNPIVOT
(
    population FOR year IN ([2012], [2013])
) AS Unpivoted;
SELECT 
    p.ProductName,
    COUNT(s.ProductID) AS TimesSold
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
GROUP BY p.ProductName
ORDER BY TimesSold DESC;
SELECT 
    year,
    district_name,
    population
FROM Population_Each_City
UNPIVOT
(
    population FOR 
district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS Unpivoted;





INSERT INTO Categories VALUES (1, 'Electronics'), (2, 'Clothes');
INSERT INTO Products1 VALUES 
(1, 'Phone', 1),
(2, 'TV', 1),
(3, 'Shirt', 2);





CREATE TABLE Categories (
    CatID INT PRIMARY KEY,
    CatName VARCHAR(50)
);

CREATE TABLE Products (
    ProdID INT PRIMARY KEY,
    ProdName VARCHAR(50),
    CatID INT,
    FOREIGN KEY (CatID) REFERENCES Categories(CatID)
);

INSERT INTO Categories VALUES (1, 'Electronics'), (2, 'Clothes');
INSERT INTO Products VALUES 
(1, 'Phone', 1),
(2, 'TV', 1),
(3, 'Shirt', 2)
SELECT 
    Products.ProdName,
    Categories.CatName
FROM 
    Products
INNER JOIN 
    Categories ON Products.CatID = Categories.CatID;



	Yokub, [Tue 19.08.25 7:16 AM]
CREATE TABLE Categories (
    CatID INT PRIMARY KEY,
    CatName VARCHAR(50)
);

CREATE TABLE Products (
    ProdID INT PRIMARY KEY,
    ProdName VARCHAR(50),
    CatID INT,
    FOREIGN KEY (CatID) REFERENCES Categories(CatID)
);

INSERT INTO Categories VALUES (1, 'Electronics'), (2, 'Clothes');
INSERT INTO Products VALUES 
(1, 'Phone', 1),
(2, 'TV', 1),
(3, 'Shirt', 2);


CREATE TABLE Teachers (
    TID INT PRIMARY KEY,
    TName VARCHAR(50)
);

CREATE TABLE Subjects (
    SID INT PRIMARY KEY,
    SName VARCHAR(50),
    TID INT,
    FOREIGN KEY (TID) REFERENCES Teachers(TID)
);

INSERT INTO Teachers VALUES (1, 'Aziz'), (2, 'Madina');
INSERT INTO Subjects VALUES 
(1, 'Math', 1),
(2, 'English', 2),
(3, 'Algebra', 1);


select Teachers.TName,Subjects.SName from Teachers  inner  join Subjects on SName=TName

-- Puzzle: Har bir fan va uni o‘qituvchi bilan chiqarila

CREATE TABLE Meals (
    MealID INT PRIMARY KEY,
    MealName VARCHAR(50)
);

CREATE TABLE Days (
    DayID INT PRIMARY KEY,
    DayName VARCHAR(50)
);

INSERT INTO Meals VALUES (1, 'Plov'), (2, 'Lagman');
INSERT INTO Days VALUES (1, 'Monday'), (2, 'Tuesday');
SELECT 
    Meals.MealName,
    Days.DayName
FROM 
    Meals
CROSS JOIN 
    Days;
