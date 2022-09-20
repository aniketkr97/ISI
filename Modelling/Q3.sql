// Query to look for interviews about VR captures
//WIP
SELECT
    V.video_id,
    M.media_name,
    P.person_id

FROM Media M , VR Capture VR

INNER JOIN Video V  ON (M.video_id = V.video_id)

WHERE V.video_type = 'Interview' AND 
V.video_id = VR.video_id AND
VR.vide_id = 'Helen'

GROUP BY
    P.person