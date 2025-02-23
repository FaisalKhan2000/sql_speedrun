# Databases

A **database** is an organized collection of data, typically stored electronically in a computer system.
Databases are managed by Database Management Systems (DBMS), which provide tools for data storage, retrieval, and manipulation.
Databases are used to efficiently store, query, and manage large amounts of data, ensuring data integrity, security, and performance.

Common types of databases include:

- **Relational Databases**: Use tables to store data and SQL for querying (e.g., MySQL, PostgreSQL).
- **NoSQL Databases**: Designed for unstructured data and scalability (e.g., MongoDB, Cassandra).
- **In-Memory Databases**: Store data in memory for fast access (e.g., Redis, Memcached).

## Tables

**Tables** are structured sets of data organized in rows (records) and columns (fields).

Example of a table structure:

| ID  | Name  | Age | Email             |
| --- | ----- | --- | ----------------- |
| 1   | Alice | 30  | alice@example.com |
| 2   | Bob   | 25  | bob@example.com   |
| 3   | Carol | 28  | carol@example.com |

### FAQs

**What's the difference between a database and a table?**

- A database is an organized collection of data, while a table is a structured set of data within a database, organized in rows and columns.

**Why use IF NOT EXISTS in CREATE DATABASE and CREATE TABLE statements?**

- It prevents errors by ensuring the database or table is only created if it does not already exist.

**What is a primary key? Why is it important?**

- A primary key is a unique identifier for each record in a table. It ensures that each record can be uniquely identified and accessed.

**What is a foreign key? What does it enforce?**

- A foreign key is a field in one table that links to the primary key of another table. It enforces referential integrity between the two tables, meaning that the relationship between the tables remains consistent.

**What is the purpose of the AUTO_INCREMENT keyword?**

- It automatically generates a unique value for a primary key field when a new record is inserted.

**What is the purpose of the UNIQUE keyword?**

- It ensures that all values in a column are distinct and no duplicates are allowed.
