-- Uber Trip Data Cleaning & Preparation

-- Create table
  CREATE TABLE uber_trips (
    Trip_ID VARCHAR(20),
    Date DATE,
    Time DATETIME,
    Hour INT,
    Day_of_Week VARCHAR(20),
    Month INT,
    Pickup_Location VARCHAR(50),
    Dropoff_Location VARCHAR(50),
    Vehicle_Type VARCHAR(50),
    Trip_Distance_km FLOAT,
    Trip_Duration_min FLOAT,
    Fare_Amount FLOAT,
    Payment_Method VARCHAR(50),
    Rating FLOAT,
    Driver_ID VARCHAR(20),
    Is_Weekend VARCHAR(10),
    Time_Period VARCHAR(50),
    Is_Airport_Trip VARCHAR(10)
);

-- Enable import
SET GLOBAL local_infile = 1;

-- Load data
LOAD DATA LOCAL INFILE 'C:/data/Uber_Cleaned_data2.csv'
INTO TABLE uber_trips
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Remove exact duplicates
CREATE TABLE uber_trips_clean AS
SELECT DISTINCT *
FROM uber_trips;

-- Final cleaning (remove duplicate Trip_ID)
DROP TABLE IF EXISTS uber_trips_final;

CREATE TABLE uber_trips_final AS
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY Trip_ID ORDER BY Date DESC) AS rn
    FROM uber_trips_clean
) t
WHERE rn = 1;
