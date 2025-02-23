# SQL Data Types Reference (MySQL)

## Numeric Data Types

- **INT**: A standard integer.
- **TINYINT**: A very small integer.
- **SMALLINT**: A small integer.
- **MEDIUMINT**: A medium-sized integer.
- **BIGINT**: A large integer.
- **FLOAT**: A floating-point number.
- **DOUBLE**: A double-precision floating-point number.
- **DECIMAL**: A fixed-point number.

## Date and Time Data Types

- **DATE**: A date value (YYYY-MM-DD).
- **DATETIME**: A date and time value (YYYY-MM-DD HH:MM:SS).
- **TIMESTAMP**: A timestamp value (YYYY-MM-DD HH:MM:SS).
- **TIME**: A time value (HH:MM:SS).
- **YEAR**: A year value (YYYY).

## String Data Types

- **CHAR**: A fixed-length string.
- **VARCHAR**: A variable-length string.
- **BINARY**: A fixed-length binary string.
- **VARBINARY**: A variable-length binary string.
- **TEXT**: A large variable-length string.
- **TINYTEXT**: A very small variable-length string.
- **MEDIUMTEXT**: A medium-sized variable-length string.
- **LONGTEXT**: A large variable-length string.
- **ENUM**: A string object with a value chosen from a list of permitted values.
- **SET**: A string object with zero or more values chosen from a list of permitted values.

## Spatial Data Types

- **GEOMETRY**: A spatial value of any type.
- **POINT**: A point in 2D space.
- **LINESTRING**: A curve with linear interpolation between points.
- **POLYGON**: A polygon.
- **MULTIPOINT**: A collection of points.
- **MULTILINESTRING**: A collection of linestrings.
- **MULTIPOLYGON**: A collection of polygons.
- **GEOMETRYCOLLECTION**: A collection of geometry objects.

## JSON Data Type

- **JSON**: A JSON value.

## Interview-style Questions

### What's the difference between VARCHAR and CHAR? When would you use one over the other?

- **CHAR** is a fixed-length string data type. It always uses the same amount of storage regardless of the actual length of the string. Use **CHAR** when the data entries in a column are expected to be of the same length.
- **VARCHAR** is a variable-length string data type. It uses only as much storage as needed for the actual length of the string, plus one or two extra bytes for length information. Use **VARCHAR** when the data entries in a column can vary significantly in length.

### When should you use DECIMAL instead of FLOAT or DOUBLE?

- Use **DECIMAL** when you need exact precision, such as for monetary values. **DECIMAL** stores numbers as strings, which allows for precise representation of decimal values.
- Use **FLOAT** or **DOUBLE** when you need to store approximate values and are willing to trade off precision for performance and storage efficiency. These types are suitable for scientific calculations where exact precision is not as critical.

### What's the difference between DATETIME and TIMESTAMP?

- **DATETIME** stores a date and time value without timezone information. It is suitable for recording events that are not timezone-specific.
- **TIMESTAMP** stores a date and time value as the number of seconds since the Unix epoch (1970-01-01 00:00:00 UTC). It is timezone-aware and automatically converts to the current timezone when retrieved. Use **TIMESTAMP** for recording events that need to be tracked across different timezones.

### What is the BOOLEAN data type in MySQL?

- MySQL does not have a native **BOOLEAN** data type. Instead, it uses the **TINYINT(1)** data type to represent boolean values. A value of `0` is considered `FALSE`, and a value of `1` is considered `TRUE`.
