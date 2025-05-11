-- Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('uuid-001', 'Alice', 'Wanjiku', 'alice@example.com', 'hashed_pw_1', '0712345678', 'guest'),
  ('uuid-002', 'Bob', 'Otieno', 'bob@example.com', 'hashed_pw_2', '0723456789', 'host'),
  ('uuid-003', 'Carol', 'Mutua', 'carol@example.com', 'hashed_pw_3', '0734567890', 'host'),
  ('uuid-004', 'David', 'Kamau', 'david@example.com', 'hashed_pw_4', '0745678901', 'admin');

-- Insert Properties
INSERT INTO property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('prop-001', 'uuid-002', 'Cozy Studio in Nairobi', 'Modern furnished studio apartment', 'Nairobi, Kenya', 45.00),
  ('prop-002', 'uuid-003', 'Beach House in Mombasa', 'Oceanfront 3-bedroom house with pool', 'Mombasa, Kenya', 120.00);

-- Insert Bookings
INSERT INTO booking (booking_id, user_id, property_id, start_date, end_date, total_price, status)
VALUES
  ('book-001', 'uuid-001', 'prop-001', '2025-06-01', '2025-06-05', 180.00, 'confirmed'),
  ('book-002', 'uuid-001', 'prop-002', '2025-07-10', '2025-07-15', 600.00, 'pending');

-- Insert Payments
INSERT INTO payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay-001', 'book-001', 180.00, 'paypal'),
  ('pay-002', 'book-002', 600.00, 'credit_card');

-- Insert Reviews
INSERT INTO review (review_id, property_id, user_id, rating, comment)
VALUES
  ('rev-001', 'prop-001', 'uuid-001', 5, 'Amazing stay! Clean and comfy.'),
  ('rev-002', 'prop-002', 'uuid-001', 4, 'Great location, but Wi-Fi was a bit slow.');

-- Insert Messages
INSERT INTO messages (message_id, sender_id, receiver_id, property_id, message)
VALUES
  ('msg-001', 'uuid-001', 'uuid-002', 'prop-001', 'Hi, is the studio available from June 1st?'),
  ('msg-002', 'uuid-002', 'uuid-001', 'prop-001', 'Yes, it’s available. Looking forward to hosting you!');
