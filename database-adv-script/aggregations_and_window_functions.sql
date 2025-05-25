SELECT user_id, COUNT(*) AS total_bookings
FROM booking
GROUP BY user_id;


SELECT 
    property_id,
    COUNT(*) AS booking_count,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM booking
GROUP BY property_id;
