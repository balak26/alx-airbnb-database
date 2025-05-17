-- Initial query: Retrieve all bookings with user, property, and payment details
SELECT 
  b.id AS booking_id,
  u.id AS user_id, u.name AS user_name, u.email,
  p.id AS property_id, p.title AS property_title, p.location,
  pay.id AS payment_id, pay.amount, pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id;
