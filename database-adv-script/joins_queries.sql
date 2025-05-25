-- SCRIPTS
SELECT * FROM 
booking
INNER JOIN users ON booking.user_id = users.user_id;


SELECT * FROM
property
LEFT JOIN review ON property.id = review.property_id\;


SELECT * FROM
user
FULL OUTER JOIN booking ON user.user_id = booking.user_id


