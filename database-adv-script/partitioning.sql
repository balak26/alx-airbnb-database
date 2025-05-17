-- Step 1: Create a partitioned Booking table based on start_date (range partitioning example)
CREATE TABLE bookings_partitioned (
  id SERIAL PRIMARY KEY,
  user_id INT,
  property_id INT,
  start_date DATE,
  end_date DATE,
  payment_id INT
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions for specific date ranges
CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
  FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
  FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- (Add more partitions as needed)

-- Step 3: Query example to test performance
SELECT *
FROM bookings_partitioned
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
