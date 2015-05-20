## Create Tables

You can create a new table from the `psql` utility, as in the previous slide.

Sometimes, it is more convenient to create a file that specifies the __schema__ of your database:

```
-- my_bookmarks_database schema
-- filename: schema.sql

DROP TABLE bookmarks CASCADE;
DROP TABLE categories CASCADE;

CREATE TABLE bookmarks(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  url VARCHAR(2047),
  category_id INTEGER
);

CREATE TABLE categories(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);
```

Then, you can perform the SQL operations defined in this file on your database:

```
$ psql my_bookmarks_database < schema.sql
DROP TABLE
DROP TABLE
CREATE TABLE
CREATE TABLE
```
