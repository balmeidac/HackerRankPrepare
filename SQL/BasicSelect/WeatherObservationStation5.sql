/* Weather Observation Station 5
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths
(i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one
that comes first when ordered alphabetically.
Here’s the table representation of the STATION table as shown in the image, ready to copy:

Station table: 
+-----------+---------------+
|    file   |     type      |
+-----------+---------------+
| id        | number        |
| city      | varchar2 (21) |
| state     | varchar2 (2)  |
| lat_n     | number        |
| long_w    | number        |
+-----------+---------------+ 
where LAT_N is the northern latitude and LONG_W is the western longitude.

Sample Input
For example, CITY has four entries: DEF, ABC, PQRS and WXY.

Sample Output
ABC 3
PQRS 4

Explanation

When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths 3, 3, 4 and 3.
The longest name is PQRS, but there are 3 options for shortest named city. Choose ABC, because it comes first alphabetically.

Note: You can write two separate queries to get the desired output. It need not be a single query. */

/* ANSWER
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths
(i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one
that comes first when ordered alphabetically. */

-- QUERY 1
-- Select the city with the shortest name and its length
SELECT TOP 1 city, LEN(city) AS name_length
-- The data is retrieved from the station table
FROM station
-- Order by the length of the city name in ascending order
-- If two cities have the same length, order alphabetically by city name
ORDER BY LEN(city), city;

-- QUERY 2
-- Select the city with the longest name and its length
SELECT TOP 1 city, LEN(city) AS name_length
-- The data is retrieved from the station table again
FROM station
-- Order by the length of the city name in descending order
-- If two cities have the same length, order alphabetically by city name
ORDER BY LEN(city) DESC, city;
