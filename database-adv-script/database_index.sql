-- Frequently used in WHERE/JOIN clauses
CREATE INDEX idx_user_id ON booking(user_id);
CREATE INDEX idx_property_id ON booking(property_id);
CREATE INDEX idx_email ON user(email);
CREATE INDEX idx_start_date ON booking(start_date);
