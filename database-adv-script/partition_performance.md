### 🧠 Explanation

- The `bookings` table is partitioned by **range on the `start_date` column**, splitting data into smaller, manageable chunks.
- Each partition stores bookings for a specific date range (e.g., bookings in 2023, bookings in 2024).
- Queries that filter by `start_date` only scan the relevant partitions, reducing the amount of data processed.
- This results in faster query execution and improved performance on large datasets.
- Performance testing before and after partitioning typically shows reduced query times for date range filters.
