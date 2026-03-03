# Raw Data Load (psql)

Use psql to load data:

\copy raw.bike_rental_raw (
  rental_date, station_id, station_name, rental_type, gender, age_group,
  usage_count, calories_text, carbon_text, distance_m_text, usage_time_min
)
FROM 'C:\path\서울특별시 공공자전거 이용정보(일별)_2512.csv'
WITH (FORMAT csv, HEADER true, ENCODING 'WIN949');