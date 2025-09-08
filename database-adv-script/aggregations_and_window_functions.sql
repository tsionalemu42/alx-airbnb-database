-- Query 1: Total number of bookings made by each user
SELECT 
    u.user_id,
    u.username,
    COUNT(b.booking_id) AS total_bookings
FROM 
    users u
JOIN 
    bookings b ON u.user_id = b.user_id
GROUP BY 
    u.user_id, u.username
ORDER BY 
    total_bookings DESC;

-- Query 2: Rank properties based on the total number of bookings (window function)
SELECT
    p.property_id,
    p.property_name,
    COUNT(b.booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM
    properties p
LEFT JOIN
    bookings b ON p.property_id = b.property_id
GROUP BY
    p.property_id, p.property_name
ORDER BY
    booking_rank;

-- Total number of bookings made by each user
SELECT u.user_id, u.username, COUNT(b.booking_id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.username
ORDER BY total_bookings DESC;

-- Rank properties based on the total number of bookings (window function)
SELECT property_id, property_name,
       COUNT(booking_id) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(booking_id) DESC) AS rank_by_bookings
FROM bookings
JOIN properties USING (property_id)
GROUP BY property_id, property_name
ORDER BY rank_by_bookings;
