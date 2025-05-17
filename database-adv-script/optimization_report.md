The initial query joins the bookings table with users, properties, and payments to get all related details in one result. Because it uses multiple joins, the query can be slow if the tables are large or if indexes on join columns are missing. Running EXPLAIN helps find inefficient parts like full table scans or costly joins.

To improve performance, you can:

- Add indexes on `user_id`, `property_id`, and `payment_id`.
- Remove unnecessary joins or columns.
- Filter results early with `WHERE` clauses.
- Rewrite the query using subqueries to reduce the data processed.
