-- SCRIPTS
SELECT * FROM 
booking
INNER JOIN users ON booking.user_id = users.user_id
