/* Weather Observation Station 4
Query Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows:

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

For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru',
there are 2 different city names: 'New York' and 'Bengalaru'.
The query returns 1, because total number of record - number of unique city names = 3 - 2 - 1. */  

-- ANSWER
/* Query Find the difference between the total number of CITY entries in the table and the number
of distinct CITY entries in the table. */

-- Select the difference between total city count and distinct city count
SELECT (COUNT(city) - COUNT(DISTINCT city)) AS difference
-- From the 'station' table
FROM station;
