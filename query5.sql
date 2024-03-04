-- The following query uses the advanced SELECT CASR/WHEN to catagorize shift size based on the number of volunteers

SELECT shift_id,
       CASE
           WHEN num_vols < 2 THEN 'Small Shift'
           WHEN num_vols < 5 THEN 'Medium Shift'
           ELSE 'Large Shift'
       END AS shift_size
FROM Shift;

-- Snippet from results:
-- shift_id  shift_size
    -- 1	Large Shift
    -- 2	Medium Shift
    -- 3	Medium Shift
    -- 4	Medium Shift
    -- 5	Medium Shift
    -- 6	Medium Shift
    -- 7	Medium Shift
    -- 8	Medium Shift
    -- 9	Small Shift
    -- 10	Medium Shift
