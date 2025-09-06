# Airbnb Database Normalization

## Objective
Ensure the database is in Third Normal Form (3NF) to reduce redundancy and maintain data integrity.

## Steps

1. **Check 1NF**  
   - Each attribute contains atomic values. ✅  
   - No repeating groups. ✅  

2. **Check 2NF**  
   - All non-key attributes fully depend on the primary key. ✅  

3. **Check 3NF**  
   - Ensure no transitive dependencies.  
   - Original schema: `Property` stored address, city, country together. Optional normalization: create a `Location` table.  

## Resulting Normalized Schema (3NF)

- **User**: unchanged  
- **Location**: `location_id`, `address`, `city`, `country`  
- **Property**: `property_id`, `host_id`, `location_id`, `title`, `description`, `price_per_night`, `property_type`, `created_at`, `updated_at`  
- **Booking**: unchanged  
- **Payment**: unchanged  
- **Review**: unchanged  
- **Property_Image**: unchanged
