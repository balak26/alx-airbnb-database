-- Identify high-usage columns and create indexes

-- For User table, assuming frequent queries use 'email' and 'id'
CREATE INDEX idx_users_email ON users(email);

-- For Booking table, common join and filter columns: 'user_id', 'property_id', 'start_date'
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- For Property table, frequent filters or joins on 'location' and 'id'
CREATE INDEX idx_properties_location ON properties(location);

-- Use EXPLAIN or ANALYZE to check query performance before and after adding indexes
-- Example:
-- EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 123;
-- EXPLAIN ANALYZE SELECT * FROM users WHERE email = 'user@example.com';
