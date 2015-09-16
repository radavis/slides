## Create a Database

```
$ createdb my_bookmarks_database
```

## Create Tables in the Database

```
$ psql my_bookmarks_database
psql (9.4.1)
Type "help" for help.

my_bookmarks_database=# CREATE TABLE bookmarks(
my_bookmarks_database(#   id SERIAL PRIMARY KEY,
my_bookmarks_database(#   title VARCHAR(255),
my_bookmarks_database(#   url VARCHAR(2047),
my_bookmarks_database(#   category_id INTEGER
my_bookmarks_database(# );
CREATE TABLE
my_bookmarks_database=# CREATE TABLE categories(
my_bookmarks_database(#   id SERIAL PRIMARY KEY,
my_bookmarks_database(#   name VARCHAR(255)
my_bookmarks_database(# );
CREATE TABLE
```
