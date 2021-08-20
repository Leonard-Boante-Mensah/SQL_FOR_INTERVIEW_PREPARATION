SELECT * FROM trips;
 
SELECT * FROM riders;
 
SELECT * FROM cars;

SELECT * FROM riders CROSS JOIN cars;

SELECT * FROM trips LEFT JOIN riders ON trips.rider_id = riders.id;

SELECT * FROM trips INNER JOIN cars ON trips.car_id = cars.id;

SELECT * FROM riders UNION SELECT * FROM riders2;

SELECT AVG(cost) AS average_trip_cost FROM trips;


SELECT * FROM riders WHERE total_trips < 500;

SELECT COUNT(*) AS active_cars FROM cars WHERE status = 'active';

SELECT * FROM cars ORDER BY trips_completed DESC LIMIT 2;