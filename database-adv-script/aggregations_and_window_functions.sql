SELECT user_id, COUNT(*) AS total_bookings
FROM booking
GROUP BY user_id;


SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM booking
GROUP BY property_id;

-- Count the total number of bookings by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM booking
GROUP BY user_id;

-- Rank properties based on the total number of bookings using RANK()
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM booking
GROUP BY property_id;
