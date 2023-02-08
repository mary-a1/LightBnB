-- Get a list of the most visited cities.

SELECT city, count(reservations.*) as total_reservations
FROM reservations
JOIN properties ON properties.id = property_id
GROUP BY city
ORDER BY total_reservations DESC;

-- Compass solution
SELECT properties.city, count(reservations) as total_reservations
FROM reservations
JOIN properties ON property_id = properties.id
GROUP BY properties.city
ORDER BY total_reservations DESC;