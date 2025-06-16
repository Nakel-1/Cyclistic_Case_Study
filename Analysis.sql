-- Analysis

-- Percentage of Rides by Membership
--SELECT 
--    membership,
--    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM cyclistic),2) AS '% of rides by membership'
--FROM cyclistic
--GROUP BY membership;

--Percentage of Ride Type
--SELECT 
--    rideable_type,
--    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM cyclistic),2) AS '% of ride type'
--FROM cyclistic
--GROUP BY rideable_type;

-- Number of Rides per Weekday
--select day_of_week, count(*) 'Number of rides by day of the week'
--from cyclistic 
--group by day_of_week;

-- Number of Rides by Month
--select month, count(*) 'Number of rides by Month'
--from cyclistic 
--group by month;

-- Number of Rides by Membership per Hour
--select DATEPART(HOUR, started_at) as 'time_of_day', membership,
--count(*) as 'Number of Rides per hour'
--from cyclistic
--group by DATEPART(HOUR, started_at), membership
--order by DATEPART(HOUR, started_at);

--Number of rides by Membership per Week
--select day_of_week, membership, count(*) 'Number of rides by Weekday and Membership'
--from cyclistic 
--group by day_of_week, membership
--order by 1;

-- Number of rides by Membership per Month
--select month, membership, count(*) 'Number of rides by Month and Membership'
--from cyclistic 
--group by month, membership
--order by 1;

-- Average Ride Time by Membership per Week
--SELECT day_of_week, membership,
--    CAST(AVG(CAST(DATEDIFF(SECOND, '00:00:00', ride_length) AS FLOAT)) AS INT) / 3600 AS Hours,
--    (CAST(AVG(CAST(DATEDIFF(SECOND, '00:00:00', ride_length) AS FLOAT)) AS INT) % 3600) / 60 AS Minutes,
--    CAST(AVG(CAST(DATEDIFF(SECOND, '00:00:00', ride_length) AS FLOAT)) AS INT) % 60 AS Seconds
--FROM 
--    cyclistic
--GROUP BY day_of_week, membership
--ORDER BY day_of_week;

-- Top 10 start station by Annual members 
--select top 10 start_station_name,
--ROUND(AVG(start_lat),4) as 'start latitude', 
--ROUND(AVG(start_long),4) as 'start longitude', 
--COUNT(*) as 'Number of rides'
--from cyclistic
--where membership = 'member' and start_station_name NOT LIKE '[Public Rack]%'
--group by start_station_name
--order by 'Number of rides' desc;

-- Top 10 start station by Casual Members
--select top 10 start_station_name,
--ROUND(AVG(start_lat),4) as 'start latitude', 
--ROUND(AVG(start_long),4) as 'start longitude', 
--COUNT(*) as 'Number of rides'
--from cyclistic
--where membership = 'casual' and start_station_name NOT LIKE '[Public Rack]%'
--group by start_station_name
--order by 'Number of rides' desc;

-- Top 10 end station by Annual Members 
--select top 10 end_station_name,
--ROUND(AVG(end_lat),4) as 'end latitude', 
--ROUND(AVG(end_long),4) as 'end longitude', 
--COUNT(*) as 'Number of rides'
--from cyclistic
--where membership = 'member' and end_station_name NOT LIKE '[Public Rack]%'
--group by end_station_name
--order by 'Number of rides' desc;

-- Top 10 end station by Casual Members 
--select top 10 end_station_name,
--ROUND(AVG(end_lat),4) as 'end latitude', 
--ROUND(AVG(end_long),4) as 'end longitude', 
--COUNT(*) as 'Number of rides'
--from cyclistic
--where membership = 'casual' and end_station_name NOT LIKE '[Public Rack]%'
--group by end_station_name
--order by 'Number of rides' desc;
