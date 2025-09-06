-- Users
INSERT INTO Users (first_name, last_name, email, phone_number, password_hash, role)
VALUES 
('Alice', 'Smith', 'alice@example.com', '1234567890', 'hashedpassword1', 'guest'),
('Bob', 'Johnson', 'bob@example.com', '2345678901', 'hashedpassword2', 'host'),
('Carol', 'Williams', 'carol@example.com', '3456789012', 'hashedpassword3', 'guest');

-- Locations
INSERT INTO Location (address, city, country)
VALUES 
('123 Main St', 'Addis Ababa', 'Ethiopia'),
('456 Oak Ave', 'Adama', 'Ethiopia');

-- Properties
INSERT INTO Property (host_id, location_id, title, description, price_per_night, property_type)
VALUES 
(2, 1, 'Cozy Apartment', 'A nice and cozy apartment in the city center.', 50.00, 'Apartment'),
(2, 2, 'Country House', 'Beautiful house in the countryside.', 80.00, 'House');

-- Bookings
INSERT INTO Booking (guest_id, property_id, check_in_date, check_out_date, status, total_price)
VALUES
(1, 1, '2025-09-15', '2025-09-20', 'confirmed', 250.00),
(3, 2, '2025-09-18', '2025-09-22', 'pending', 320.00);

-- Payments
INSERT INTO Payment (booking_id, amount, payment_method, status)
VALUES
(1, 250.00, 'Credit Card', 'completed'),
(2, 320.00, 'PayPal', 'pending');

-- Reviews
INSERT INTO Review (booking_id, guest_id, rating, comment)
VALUES
(1, 1, 5, 'Great stay, very clean and comfortable!'),
(2, 3, 4, 'Nice place, but a bit far from the city.');

-- Property Images
INSERT INTO Property_Image (property_id, image_url)
VALUES
(1, 'https://example.com/images/apartment1.jpg'),
(2, 'https://example.com/images/countryhouse1.jpg');
