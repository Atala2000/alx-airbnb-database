-- Initial complex query
SELECT 
    booking.*,
    user.name,
    user.email,
    property.name AS property_name,
    payment.amount,
    payment.status
FROM booking
JOIN user ON booking.user_id = user.id
JOIN property ON booking.property_id = property.id
JOIN payment ON booking.payment_id = payment.id;
