DROP TABLE IF EXISTS raw.bike_rental;

CREATE TABLE raw.bike_rental AS
SELECT
  rental_date,
  station_id,
  station_name,
  rental_type,
  NULLIF(gender, '') AS gender,
  age_group,
  usage_count,
  NULLIF(NULLIF(calories_text, ''), '""')::numeric AS calories,
  NULLIF(NULLIF(carbon_text, ''), '""')::numeric AS carbon,
  NULLIF(NULLIF(distance_m_text, ''), '""')::numeric AS distance_m,
  usage_time_min
FROM raw.bike_rental_raw;