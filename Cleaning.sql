-- Data Cleaning

--  Find and remove rows that start latitude is NULL
delete from cyclistic
where start_lat is null;

--  Find and remove rows that end latitude is NULL
delete from cyclistic
where end_lat is null;

--  Find and remove rows that start longitude is NULL
delete from cyclistic
where start_long is null;

--  Find and remove rows that start longitude is NULL
delete from cyclistic
where end_long is null;

-- Find and remove ride_length that is null 
delete from cyclistic
where ride_length is null;

-- Find and remove ride_length that is a negative value
delete from cyclistic
where ride_length like '-%';

-- Find and remove ride_length that is greater than 24hours
DELETE FROM cyclistic
WHERE DATEDIFF(HOUR, started_at, ended_at) > 24;

-- Find and remove ride_length that is less than 1minute
delete from cyclistic
where DATEDIFF(second, 0, ride_length) < 60;

-- Find and remove start_lat, end_lat and start_long, end_long is same value
DELETE
FROM cyclistic
WHERE start_lat = end_lat 
  AND start_long = end_long;
