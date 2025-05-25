-- EXPLAIN ANALYZE BEFORE INDEXING
EXPLAIN ANALYZE
SELECT * FROM booking
WHERE user_id = 1;

-- Create indexes on commonly queried columns
CREATE INDEX idx_booking_user_id ON booking(user_id);
CREATE INDEX idx_booking_property_id ON booking(property_id);
CREATE INDEX idx_user_email ON user(email);
CREATE INDEX idx_property_location ON property(location);

-- EXPLAIN ANALYZE AFTER INDEXING
EXPLAIN ANALYZE
SELECT * FROM booking
WHERE user_id = 1;
