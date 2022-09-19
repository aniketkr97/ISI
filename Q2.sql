// Query about such a video which has a Person 1 (Alex) and Person 2(Helen) talking about cellular component X

SELECT
    V.video_id,
    M.media_name,
    C.cellular_component_name
    P.person_id

FROM Media M
INNER JOIN Cellular_Components C   ON (M.pdb_id = C.pdb_id)
INNER JOIN Video V  ON (M.video_id = V.video_id)
INNER JOIN Person P ON (M.person_id = )

WHERE C.cellular_component_name LIKE '%Insulin%'
WHERE P.person_name = 'Alex' OR P.person_name = 'Helen'

GROUP BY
    P.person
	
