# SQL CRUD Operations

## SELECT

The `SELECT` statement is used to query and retrieve data from a database.

```sql
SELECT column1, column2 FROM table_name WHERE condition;
```

To select all columns from a table:

```sql
SELECT * FROM table_name;
```

## INSERT

The `INSERT` statement is used to add new rows to a table.

```sql
INSERT INTO table_name (column1, column2) VALUES (value1, value2);
```

To insert multiple rows at once:

```sql
INSERT INTO table_name (column1, column2) VALUES (value1, value2), (value3, value4);
```

## UPDATE

The `UPDATE` statement is used to modify existing data in a table.

```sql
UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;
```

The `WHERE` clause specifies which rows to update. Omitting it will update all rows in the table.

## DELETE

The `DELETE` statement is used to remove rows from a table.

```sql
DELETE FROM table_name WHERE condition;
```

The `WHERE` clause specifies which rows to delete. Omitting it will delete all rows in the table.

## Interview-style Questions

### What is the basic syntax of an INSERT statement?

The basic syntax of an `INSERT` statement is:

```sql
INSERT INTO table_name (column1, column2) VALUES (value1, value2);
```

### How do you select all columns from a table? How do you select specific columns?

To select all columns from a table, use:

```sql
SELECT * FROM table_name;
```

To select specific columns, use:

```sql
SELECT column1, column2 FROM table_name;
```

### What is the purpose of the WHERE clause in UPDATE and DELETE statements? What happens if you omit it?

The `WHERE` clause in `UPDATE` and `DELETE` statements specifies which rows to update or delete. If you omit the `WHERE` clause, all rows in the table will be updated or deleted.

### Can you insert multiple rows at once using a single INSERT statement?

Yes, you can insert multiple rows at once using a single `INSERT` statement:

```sql
INSERT INTO table_name (column1, column2) VALUES (value1, value2), (value3, value4);
```
