# Query Optimization Report

## Objective
Refactor complex queries to improve database performance.

## Initial Query
The initial query retrieved all columns from bookings, users, properties, and payments:

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
