// Query to Select Videos which have a media component in them. 
SELECT
	V.video_id,
	M.media_name,
	C.pdb_id

FROM Media M
INNER JOIN Cellular_Components C   ON (M.pdb_id = C.pdb_id)
INNER JOIN Video V  ON (M.video_id = V.video_id)

WHERE C.cellular_component_name LIKE '%Insulin%'

GROUP BY
	V.video_id,
	
