// Query to look for interviews about VR captures
SELECT
    V.video_id,
    M.media_name

FROM Media M ,Video V 

INNER JOIN Video V  ON (M.video_id = V.video_id)

WHERE V.video_type = 'Interview' AND 
M.media_type CONTAINS ('VR')

GROUP BY
    M.media_name