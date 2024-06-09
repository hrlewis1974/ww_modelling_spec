/* create new general points to indicate
   rising mains join gravity sewers
   once the sql has run go through each new general point
   and remove ones not applicable
*/

UPDATE [Node] IN Base SCENARIO
SET $test = 1 
WHERE ds_links.solution_model ='Full'
AND (us_links.solution_model ='ForceMain' 
OR us_links.solution_model ='Pressure');

INSERT INTO [general point]
(point_id, asset_id, category, general_point_x, general_point_y, general_point_z)
IN SCENARIO 'h2s'

SELECT 'PS2G_' + node_id, asset_id, 'PS2G', x, y, ground_level 
FROM [Node] IN Base SCENARIO
WHERE $test = 1;