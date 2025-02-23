-- Active: 1740311162791@@127.0.0.1@3306@mystore

-- INSERT: Adding data
INSERT INTO customers (`FirstName`, `LastName`, `Email`)
VALUES 
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Michael', 'Johnson', 'michael.johnson@example.com'),
('Emily', 'Davis', 'emily.davis@example.com'),
('David', 'Wilson', 'david.wilson@example.com'),
('Sarah', 'Brown', 'sarah.brown@example.com'),
('Chris', 'Jones', 'chris.jones@example.com'),
('Amanda', 'Garcia', 'amanda.garcia@example.com'),
('James', 'Martinez', 'james.martinez@example.com'),
('Jessica', 'Hernandez', 'jessica.hernandez@example.com');


-- SELECT: Retrieving data
SELECT * FROM customers

SELECT `FirstName`, `LastName` FROM customers  -- Select specific columns

-- UPDATE: Modifying data
UPDATE customers
SET `Email` = 'john.doe.updated@example.com'
WHERE `CustomerID` = 1


-- DELETE: Removing data
DELETE FROM Customers
WHERE CustomerID = 2;

-- Careful with DELETE!  This will delete ALL rows:
-- DELETE FROM Customers;