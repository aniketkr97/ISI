// Query about such a video which has a Person 1 (Alex) and Person 2(Helen) talking about cellular component X
SELECT
    M.video_id,
    M.media_name,
    C.cellular_component_name
    P.name

FROM Media M
INNER JOIN Media_Component MC ON (M.media_id = MC.media_id)
INNER JOIN Cellular Components C ON (MC.pdb_id = C.pdb_id)
INNER JOIN Media_Person ON MP.media_id = M.media_id 
INNER JOIN Person P ON (MP.person_id = P.person_id)

WHERE C.cellular_component_name LIKE '%Insulin%' AND
WHERE P.person_name = 'Alex' OR P.person_name = 'Helen'


GROUP BY
    P.person
