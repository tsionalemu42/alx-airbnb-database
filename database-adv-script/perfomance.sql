-- Initial query to retrieve all bookings with user, property, and payment details
SELECT 
    b.booking_id,
    u.user_id,
    u.username,
    p.property_id,
    p.property_name,
    pay.payment_id,
    pay.amount,
    b.booking_date
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id;

-- Example optimized query using USING() for shorter joins
SELECT 
    b.booking_id,
    u.username,
    p.property_name,
    pay.amount
FROM bookings b
JOIN users u USING(user_id)
JOIN properties p USING(property_id)
JOIN payments pay USING(booking_id);

