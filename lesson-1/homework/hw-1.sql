create database homework1
use homework1
---1  Data:Data refers to raw facts, figures, or information that can be collected, stored, and analyzed. It could be numbers, text, images, or any type of measurable or recordable information.
--Example: John, 25, New York — this is raw data about a person.
--Database:A database is an organized collection of data that is stored electronically and can be easily accessed, managed, and updated. It allows users to efficiently store large amounts of information and retrieve it when needed.
--Example: A customer database storing all customer information for a company.
--Relational Database:A relational database is a type of database that stores data in tables with rows and columns. The tables can be related to each other through keys (like primary and foreign keys), which makes it easier to organize and query data efficiently.
--Example: An e-commerce database where one table stores customers, another stores orders, and a relationship links customers to their orders.
--Table:A table is a structured collection of data within a database, organized in rows (records) and columns (fields). Each row represents a single record, and each column represents a specific attribute of that record.
--2  Relational Database Management SQL Server is a relational database system, meaning it organizes data into tables with relationships between them, supporting structured querying using SQL (Structured Query Language).
--Security Features
--Provides robust security mechanisms like authentication, authorization, encryption, and role-based access control to protect data from unauthorized access.
--High Availability and Scalability
--Supports features like Always On Availability Groups, database mirroring, and clustering to ensure databases remain available and can scale to handle growing workloads.
--Data Integration and Analysis Tools
--Includes tools like SQL Server Integration Services (SSIS) for ETL (Extract, Transform, Load), SQL Server Reporting Services (SSRS) for reporting, and SQL Server Analysis Services (SSAS) for data analysis and OLAP.
--Backup and Recovery Offers robust backup, restore, and recovery options, including point-in-time recovery, to ensure data integrity and protection against failures.
--3  Windows Authentication Uses your Windows account credentials to log in.
--SQL Server trusts the Windows operating system to verify the user, so you don’t need to provide a separate username and password for SQL Server.
--Pros: More secure, supports Active Directory, easier to manage in enterprise environments.
--SQL Server Authentication
--Requires a SQL Server-specific username and password.
--Users are authenticated directly by SQL Server instead of Windows.
--Pros: Can be used when connecting from non-Windows systems or across networks without domain trust.
create database SchoolDB
use SchoolDB
create table students ( last_name varchar(50),age int,student_id int IDENTITY(1,1) )
INSERT INTO students VALUES ('ali', 12),('umar', 13),('huil', 19)
select*from students



--SQL Server
--What it is: A Relational Database Management System (RDBMS) developed by Microsoft.
--Purpose: It stores, manages, and retrieves data for applications.
--Key features:
--Supports relational databases with tables, rows, and columns.
--Provides security, backup, and transaction management.
--Can handle large volumes of data and multiple users.
--Analogy: SQL Server is like a library building where all books (data) are stored.
-- SSMS (SQL Server Management Studio)
--What it is: A graphical user interface (GUI) tool for managing SQL Server.
--Purpose: Allows you to interact with SQL Server easily—write queries, manage databases, monitor performance, and configure security.
--Key features:
--Query editor to run SQL commands.
--Visual management of databases, tables, and users.
--Tools for backup, restore, and monitoring.
--Analogy: SSMS is like the librarian’s desk, where you can access, organize, and manage all the books in the library
--DQL (Data Query Language) Purpose: Retrieve data,Command: SELECT
--DML (Data Manipulation Language),Purpose: Modify data,Commands: INSERT, UPDATE, DELETE
--DDL (Data Definition Language),Purpose: Define/alter structure,Commands: CREATE, ALTER, DROP, TRUNCATE
-- DCL (Data Control Language),Purpose: Control access,Commands: GRANT, REVOKE
--TCL (Transaction Control Language),Purpose: Manage transactions,Commands: COMMIT, ROLLBACK, SAVEPOINT
--RESTORE DATABASE AdventureWorksDW2022,FROM DISK = 'C:\Path\To\AdventureWorksDW2022.bak',WITH MOVE 'AdventureWorksDW2022_Data' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksDW2022.mdf',
  --   MOVE 'AdventureWorksDW2022_Log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksDW2022.ldf',
   --  REPLACE;
