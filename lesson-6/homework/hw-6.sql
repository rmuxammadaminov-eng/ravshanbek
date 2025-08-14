create database homework6
use homework6
--way1
CREATE TABLE InputTbl (
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
    INSERT INTO InputTbl (col1, col2) VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');
SELECT DISTINCT 
    LEAST(col1, col2) AS col1,
    GREATEST(col1, col2) AS col2
FROM InputTbl;
--way2
CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);

WITH Normalized AS (
  SELECT 
    CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col1,
    CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS col2
  FROM InputTbl
)
SELECT DISTINCT col1, col2
FROM Normalized;
SELECT *
FROM TestMultipleZero
WHERE 
    COALESCE(A, 0) != 0 OR
    COALESCE(B, 0) != 0 OR
    COALESCE(C, 0) != 0 OR
    COALESCE(D, 0) != 0;
--COALESCE(column, 0) ensures that if a column is NULL, it's treated as 0.

--The OR conditions check if any one column is non-zero.

--So rows where all columns are 0 or NULL will be excluded.
 Puzzle 3: Find those with odd ids
```sql
create table section1(id int, name varchar(20))
insert into section1 values (1, 'Been'),
       (2, 'Roma'),
       (3, 'Steven'),
       (4, 'Paulo'),
       (5, 'Genryh'),
       (6, 'Bruno'),
       (7, 'Fred'),
       (8, 'Andro')
	   SELECT *
FROM section1
WHERE id % 2 = 1;
SELECT *
FROM section1
WHERE id = (SELECT MIN(id) FROM section1);
select max(id) as id_max from section1
SELECT *
FROM section1
WHERE name LIKE 'B%';
SELECT *
FROM section1
WHERE name LIKE 'B%';
CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');
SELECT *
FROM ProductCodes
WHERE Code LIKE '%\_%' ESCAPE '\';



