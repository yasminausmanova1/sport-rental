SELECT
    i.item_name,
    COUNT(b.booking_id) AS bookings_count,
    SUM((b.end_date - b.start_date) * i.price_per_day) AS total_income
FROM Inventory i
JOIN Booking b
ON i.item_id = b.item_id
GROUP BY i.item_name
ORDER BY total_income DESC;
