-- Uber Trip Business Analysis Queries

-- Total Trips
SELECT COUNT(*) AS total_trips
FROM uber_trips_final;

-- Total Revenue
SELECT SUM(Fare_Amount) AS total_revenue
FROM uber_trips_final;

-- Peak Demand + Revenue
SELECT 
    Hour,
    COUNT(*) AS total_trips,
    SUM(Fare_Amount) AS total_revenue
FROM uber_trips_final
GROUP BY Hour
ORDER BY total_trips DESC;

-- Vehicle Performance
SELECT 
    Vehicle_Type,
    COUNT(*) AS trips,
    SUM(Fare_Amount) AS revenue,
    AVG(Fare_Amount) AS avg_fare,
    AVG(Fare_Amount / Trip_Distance_km) AS fare_per_km
FROM uber_trips_final
GROUP BY Vehicle_Type
ORDER BY revenue DESC;

-- Airport vs Non-Airport
SELECT 
    Is_Airport_Trip,
    COUNT(*) AS trips
FROM uber_trips_final
GROUP BY Is_Airport_Trip;

-- Top Locations
SELECT 
    Pickup_Location,
    COUNT(*) AS trips,
    SUM(Fare_Amount) AS revenue
FROM uber_trips_final
GROUP BY Pickup_Location
ORDER BY revenue DESC
LIMIT 5;

-- Weekend vs Weekday
SELECT 
    Is_Weekend,
    COUNT(*) AS trips,
    AVG(Fare_Amount) AS avg_fare
FROM uber_trips_final
GROUP BY Is_Weekend;
