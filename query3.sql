-- This query uses a GROUP BY and HAVING clause to determine which shifts have less volunteers than are needed to operate a shift

SELECT shift_id, COUNT(*) AS volunteers
FROM Attendance
GROUP BY shift_id
HAVING COUNT(*) < (
    SELECT num_vols FROM Shift WHERE Shift.shift_id = Attendance.shift_id
);

-- Snippet of the results - shift 3 has 1 volunteer, shift 4 has 1, etc...
-- All shifts listed have less volunteers than the data says they require
--  shift_id  volunteers
    -- 3	    1
    -- 4	    1
    -- 5	    2
    -- 7	    1
    -- 10	    1
    -- 11	    1
    -- 12	    1
    -- 17	    1
    -- 20	    1
    -- 23	    2
-- ...