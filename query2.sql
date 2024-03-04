-- This query uses a subquery to select all volunteers who have not signed up for a shift yet

SELECT * 
FROM Volunteer 
WHERE vol_id NOT IN (
    SELECT DISTINCT vol_id 
    FROM Attendance
);

-- Snippet of the results - we retreived all vol_id's not in Attendance

-- vol_id
--  35
--  37
--  43
--  44
--  50
--  52
--  54
--  59
--  60
--  64
--  66
--  67
--  69
--  71
--  78
--  79
--  80
--  82
--  83
--  84
--  91
--  93
--  99
--  107
--  108
--  109
-- ...
