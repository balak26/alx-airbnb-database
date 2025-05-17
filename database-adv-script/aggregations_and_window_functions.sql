-- Total number of bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- Rank properties based on total number of bookings using ROW_NUMBER()
SELECT 
  property_id,
  COUNT(*) AS booking_count,
  ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_number_rank
FROM bookings
GROUP BY property_id;

-- Rank properties based on total number of bookings using RANK()
SELECT 
  property_id,
  COUNT(*) AS booking_count,
  RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_rank
FROM bookings
GROUP BY property_id;
