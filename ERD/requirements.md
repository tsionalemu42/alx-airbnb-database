# Airbnb Database – Entities and Relationships

## Entities

### User
- user_id (PK)
- first_name
- last_name
- email (unique)
- phone_number
- password_hash
- role (host, guest, admin)
- created_at
- updated_at

### Property
- property_id (PK)
- host_id (FK → User.user_id)
- title
- description
- address
- city
- country
- price_per_night
- property_type (apartment, house, villa, etc.)
- created_at
- updated_at

### Booking
- booking_id (PK)
- guest_id (FK → User.user_id)
- property_id (FK → Property.property_id)
- check_in_date
- check_out_date
- status (pending, confirmed, cancelled, completed)
- total_price
- created_at

### Payment
- payment_id (PK)
- booking_id (FK → Booking.booking_id)
- amount
- payment_date
- payment_method (credit card, PayPal, mobile money, etc.)
- status (pending, completed, failed)

### Review
- review_id (PK)
- booking_id (FK → Booking.booking_id)
- guest_id (FK → User.user_id)
- rating (1–5)
- comment
- created_at

### Property_Image
- image_id (PK)
- property_id (FK → Property.property_id)
- image_url
- uploaded_at

---

## Relationships

- **User → Property**: 1 User (host) → * Properties  
- **User → Booking**: 1 User (guest) → * Bookings  
- **Property → Booking**: 1 Property → * Bookings  
- **Booking → Payment**: 1 Booking → 1 Payment  
- **Booking → Review**: 1 Booking → 1 Review  
- **Property → Property_Image**: 1 Property → * Property_Images
