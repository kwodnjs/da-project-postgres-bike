CREATE TABLE IF NOT EXISTS raw.bike_rental_raw (
  rental_date DATE,
  station_id INT,
  station_name TEXT,
  rental_type TEXT,
  gender TEXT,
  age_group TEXT,
  usage_count INT,
  calories_text TEXT,
  carbon_text TEXT,
  distance_m_text TEXT,
  usage_time_min INT
);