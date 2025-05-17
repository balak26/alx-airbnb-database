-- INNER JOIN

SELECT 
    bookings.id AS booking_id,
    users.id AS user_id,
    users.name,
    bookings.date
FROM 
    bookings
INNER JOIN users ON bookings.user_id = users.id;

-- LEFT JOIN 

SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.comment
FROM 
    properties
LEFT JOIN reviews ON properties.id = reviews.property_id;
ORDER BY p.id;

-- FULL OUTER JOIN

SELECT 
    users.id AS user_id,
    users.name,
    bookings.id AS booking_id,
    bookings.date
FROM 
    users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;
