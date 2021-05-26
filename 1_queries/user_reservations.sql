SELECT reservations.*, properties.*, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
JOIN reservations ON reservation_id = reservations.id
WHERE property_reviews.guest_id = 1
GROUP BY properties.id, reservations.id
HAVING end_date < now()::date
ORDER BY start_date;