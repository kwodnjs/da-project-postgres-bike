Seoul Bike Demand Structure Analysis
1. Project Overview

This project analyzes the demand structure of Seoul’s public bike system using daily aggregated usage data.

The objective is to identify:

Temporal demand patterns (daily & weekday structure)

Gender-based usage differences

Age cohort behavioral characteristics

Core user profile

All analysis was conducted using PostgreSQL and SQL-based segmentation.

2. Data Description

Dataset: Seoul Public Bike Daily Usage

Period: 31 days (1 month)

Total Records: 1,268,208

Stations: 2,770

Variables used:

rental_date

station_id

gender

age_group

usage_count

distance_m

usage_time_min

Data Cleaning

Rides exceeding 30km were treated as outliers and removed.

Gender values were standardized (M/F/UNKNOWN).

Speed calculated as:
distance(km) / (usage_time_min / 60)

3. Key Findings
🔹 A. Temporal Demand Structure
Metric	Value
Weekday Avg	70,574
Weekend Avg	41,648
Highest Day	100,489 (Monday)
Lowest Day	19,136 (Saturday)

Insight:

Seoul Bike usage is strongly weekday-oriented, indicating commuter-driven demand rather than leisure-focused usage.

🔹 B. Gender Structure
Metric	Female	Male
Avg Distance	2.55 km	3.09 km
Avg Time	26.03 min	28.95 min
Avg Speed	7.72 km/h	8.40 km/h

Insight:

Male riders travel longer distances, ride longer, and maintain higher speeds.
However, both genders exhibit strong weekday-driven demand patterns.

🔹 C. Age Cohort Structure

Core user base:

20s–40s account for ~68% of total demand.

Behavioral differences:

40s–50s ride the longest distances.

20s maintain the highest average speeds.

Usage sharply declines in the 60+ population.

Insight:

The system is predominantly used by working-age urban commuters.

4. Structural Conclusion

Seoul Bike functions primarily as:

A weekday-oriented urban commuting mobility system.

The demand structure is:

Time-driven (weekday peak)

Demographically concentrated (20–40 age group)

Male-dominant in volume

Behaviorally differentiated by age

5. Limitations

Only one month of data (no seasonal comparison possible)

Daily aggregated data (no time-of-day analysis)

Future analysis could incorporate:

Weather data

Time-of-day logs

GIS station location data

6. Skills Demonstrated

Data cleaning & outlier handling

SQL window functions

Segmentation analysis

Behavioral profiling

Demand structure interpretation