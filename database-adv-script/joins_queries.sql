-- Complex Queries with Joins for Airbnb Database

-- 1. INNER JOIN: Retrieve all bookings with the respective users who made them
SELECT 
    b.booking_id,
    b.property_id,
    b.check_in,
    b.check_out,
    u.user_id,
    u.username,
    u.email
FROM bookings b
INNER JOIN users u
    ON b.user_id = u.user_id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties with no reviews
SELECT 
    p.property_id,
    p.title,
    r.review_id,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN reviews r
    ON p.property_id = r.property_id;

-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if a user has no booking or a booking is not linked to a user
-- Note: MySQL does not support FULL OUTER JOIN natively. Using UNION of LEFT and RIGHT JOIN as a workaround
-- Retrieve all properties and their reviews, including properties with no reviews
SELECT 
    p.property_id,
    p.property_name,
    r.review_id,
    r.user_id,
    r.rating,
    r.comment
FROM 
    properties p
LEFT JOIN 
    reviews r
ON 
    p.property_id = r.property_id;
SELECT 
    u.user_id,
    u.username,
    b.booking_id,
    b.property_id,
    b.check_in,
    b.check_out
FROM users u
LEFT JOIN bookings b
    ON u.user_id = b.user_id

UNION

SELECT 
    u.user_id,
    u.username,
    b.booking_id,
    b.property_id,
    b.check_in,
    b.check_out
FROM users u
RIGHT JOIN bookings b
    ON u.user_id = b.user_id;
