SELECT property.*
FROM property
JOIN review ON property.id = review.property_id
GROUP BY property.id
HAVING AVG(review.rating) > 4.0;


SELECT *
FROM user
WHERE (
    SELECT COUNT(*)
    FROM booking
    WHERE booking.user_id = user.id
) > 3;
