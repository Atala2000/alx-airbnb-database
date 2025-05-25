SELECT user_id, COUNT(*) AS total_bookings
FROM booking
GROUP BY user_id;


SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM booking
GROUP BY property_id;