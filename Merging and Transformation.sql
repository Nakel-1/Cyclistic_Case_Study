-- Merging and Transformation

--Insert the monthly data into cyclistic table 
INSERT INTO [dbo].[cyclistic]
SELECT * FROM [dbo].[January2024_trip]
UNION ALL
SELECT * FROM [dbo].[February2024_trip]
UNION ALL
SELECT * FROM [dbo].[March2024_trip]
UNION ALL
SELECT * FROM [dbo].[April2024_trip]
UNION ALL
SELECT * FROM [dbo].[May2024_trip]
UNION ALL
SELECT * FROM [dbo].[June2024_trip]
UNION ALL
SELECT * FROM [dbo].[July2024_trip]
UNION ALL
SELECT * FROM [dbo].[August2024_trip]
UNION ALL
SELECT * FROM [dbo].[September2024_trip]
UNION ALL
SELECT * FROM [dbo].[October2024_trip]
UNION ALL
SELECT * FROM [dbo].[November2024_trip]
UNION ALL
SELECT * FROM [dbo].[December2024_trip];

--Add month column
alter table cyclistic
add month varchar(50);

-- Populate month column using the started_at date
update cyclistic
set month = case 
		when month(started_at) = 01 then 'January'
		when month(started_at) = 02 then 'February'
		when month(started_at) = 03 then 'March'
		when month(started_at) = 04 then 'April'
		when month(started_at) = 05 then 'May'
		when month(started_at) = 06 then 'June'
		when month(started_at) = 07 then 'July'
		when month(started_at) = 08 then 'August'
		when month(started_at) = 09 then 'September'
		when month(started_at) = 10 then 'October'
		when month(started_at) = 11 then 'November'
		when month(started_at) = 12 then 'December'
		END;