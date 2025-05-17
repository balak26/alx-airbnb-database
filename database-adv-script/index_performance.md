-- Example: Creating indexes on high-usage columns

-- Index on users.id (usually primary key, but explicitly shown)
CREATE INDEX idx_users_id ON users(id);

-- Index on bookings.user_id for faster joins and filtering by user
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id for faster filtering by property
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on properties.id (usually primary key)
CREATE INDEX idx_properties_id ON properties(id);

-- Index on bookings.date if queries often filter or order by date
CREATE INDEX idx_bookings_date ON bookings(date);

### 🧠 Explanation

#### 🔹 Identify High-Usage Columns

- Columns frequently used in `WHERE`, `JOIN`, and `ORDER BY` clauses are good candidates for indexing.
- Examples include primary keys (`id`), foreign keys (`user_id`, `property_id`), and columns often filtered or sorted like `date`.

#### 🔹 Creating Indexes

- Use `CREATE INDEX` to speed up queries involving these columns.
- Store these commands in a file like `database_index.sql` to apply consistently.

#### 🔹 Measuring Performance

- Use `EXPLAIN` or `ANALYZE` to review query execution plans and performance before and after adding indexes.
- Successful indexing should reduce query execution time and resource usage.
