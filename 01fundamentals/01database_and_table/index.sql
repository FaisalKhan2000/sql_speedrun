-- Active: 1740311162791@@127.0.0.1@3306@university

-- Create a new database
CREATE DATABASE IF NOT EXISTS mystore;

-- Use the newly created database
USE mystore;

-- Create a 'Customers' table
CREATE TABLE IF NOT EXISTS Customers (
  CustomerID INT AUTO_INCREMENT PRIMARY KEY,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  Email VARCHAR(255) UNIQUE,
  RegistrationDate DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Create a 'Products' table
CREATE TABLE IF NOT EXISTS Products (
  ProductID INT AUTO_INCREMENT PRIMARY KEY,
  ProductName VARCHAR(255) NOT NULL,
  Price DECIMAL(10, 2) NOT NULL,
  StockQuantity INT
);

-- Create an 'Orders' table (illustrates foreign key relationship)
CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create an OrderItems table
CREATE TABLE IF NOT EXISTS OrderItems(
    OrderItemID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Show all tables
SHOW TABLES;

-- Describe table
DESCRIBE Customers;

-- Coding Exercises

-- Create a database named University.
CREATE DATABASE IF NOT EXISTS University;

-- Use the newly created database
USE University;

-- Create a table named Students with columns for StudentID (primary key), Name, Major, and GPA.
CREATE TABLE IF NOT EXISTS Students(
  StudentID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Major VARCHAR(255) NOT NULL,
  GPA DECIMAL(3, 2) NOT NULL
);

-- Create a table named Courses with columns for CourseID (primary key), CourseName, and Credits.
CREATE TABLE IF NOT EXISTS Courses(
  CourseID INT AUTO_INCREMENT PRIMARY KEY,
  CourseName VARCHAR(255) NOT NULL,
  Credits INT NOT NULL
);

-- Create a StudentCourses table to represent a many-to-many relationship between Students and Courses. It should include foreign keys to both tables.
CREATE TABLE IF NOT EXISTS StudentCourses(
  StudentCourseID INT AUTO_INCREMENT PRIMARY KEY,
  StudentID INT,
  CourseID INT,
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);