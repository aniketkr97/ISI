// Query to Select Videos which have Insulin as a cellular component in them.
SELECT
	M.video_id,
	M.media_name,
	MC.pdb_id
FROM Media M
INNER JOIN Media_Component MC ON (M.media_id = MC.media_id)
INNER JOIN Cellular_Component C ON (C.pdb_id = MC.pdb_id)

WHERE C.cellular_component_name LIKE '%Insulin%'

GROUP BY
	V.video_id,
