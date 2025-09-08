# Query Optimization Report
# Optimization Report for Complex Queries

## Objective
Optimize complex queries to improve performance in Airbnb database.

## Initial Query
The initial query retrieves all bookings along with user, property, and payment details:

```sql
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
