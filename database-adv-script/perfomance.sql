-- Initial query retrieving all bookings with user, property, and payment details
SELECT 
    b.id AS booking_id,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount,
    pay.status
FROM booking b
JOIN user u ON b.user_id = u.id
JOIN property p ON b.property_id = p.id
JOIN payment pay ON b.payment_id = pay.id
WHERE pay.status = 'completed'
  AND b.start_date >= '2024-01-01';

-- Analyze the query performance
EXPLAIN 
SELECT 
    b.id AS booking_id,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount,
    pay.status
FROM booking b
JOIN user u ON b.user_id = u.id
JOIN property p ON b.property_id = p.id
JOIN payment pay ON b.payment_id = pay.id
WHERE pay.status = 'completed'
  AND b.start_date >= '2024-01-01';
