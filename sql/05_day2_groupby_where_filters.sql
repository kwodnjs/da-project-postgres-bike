select 1;

SELECT
  ordinal_position,
  column_name,
  data_type
FROM information_schema.columns
WHERE table_schema = 'raw'
  AND table_name = 'bike_rental'
ORDER BY ordinal_position;

SELECT COUNT(*) FROM raw.bike_rental;

SELECT
    rental_date,
    SUM(usage_count) AS total_rides
FROM raw.bike_rental
GROUP BY rental_date
ORDER BY rental_date;

SELECT current_database();

SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_schema = 'raw'
ORDER BY table_name;

SELECT COUNT(*) FROM raw.bike_rental;

SELECT
  rental_date,
  SUM(usage_count) AS total_rides
FROM raw.bike_rental
GROUP BY rental_date
ORDER BY rental_date;

SELECT
  DATE_TRUNC('month', rental_date)::date AS month,
  SUM(usage_count) AS total_rides
FROM raw.bike_rental
GROUP BY month
ORDER BY month;

select * from raw.bike_rental

SELECT COALESCE(gender, 'UNKNOWN') AS gender,
SUM(usage_count)  AS total_rides
FROM raw.bike_rental
GROUP BY COALESCE(gender, 'UNKNOWN')
ORDER BY total_rides DESC;

SELECT
  COALESCE(UPPER(gender), 'UNKNOWN') AS gender,
  SUM(usage_count) AS total_rides
FROM raw.bike_rental
GROUP BY COALESCE(UPPER(gender), 'UNKNOWN')
ORDER BY total_rides DESC;

UPDATE raw.bike_rental
SET gender = UPPER(gender);

SELECT DISTINCT gender FROM raw.bike_rental;

SELECT station_id, station_name, SUM(usage_count) AS total_rides
FROM raw.bike_rental
GROUP BY station_id, station_name
ORDER BY total_rides  DESC
LIMIT 20;

SELECT rental_date, SUM(usage_count) AS total_rides
FROM raw.bike_rental
WHERE distance_m IS NOT NULL
AND calories IS NOT NULL 
GROUP BY rental_date
ORDER BY rental_date;

SELECT rental_date, SUM(usage_count) AS total_rides
FROM raw.bike_rental
WHERE distance_m > 0 
GROUP BY rental_date
ORDER BY rental_date;