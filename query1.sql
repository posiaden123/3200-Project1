-- The following query gets the total number of volunteers for each shift that has volunteers

SELECT shift_id, COUNT(*) AS volunteer_count 
FROM Attendance 
GROUP BY shift_id;

-- Snippet of the results - shift 3 has 1 volunteer, shift 29 has 4, etc...
-- shift_id  volunteer_count
    -- 3	    1
    -- 4	    1
    -- 5	    2
    -- 7	    1
    -- 9	    1
    -- 10	    1
    -- 11	    1
    -- 12	    1
    -- 15	    3
    -- 17	    1
    -- 20	    1
    -- 22	    2
    -- 23	    2
    -- 24	    1
    -- 26	    1
    -- 27	    1
    -- 28	    3
    -- 29	    4
-- ...