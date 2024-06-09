/* create new general points to indicate
   pumped lines join gravity sewers
   once the sql has run go through each new general point
   and remove ones not applicable
*/

UPDATE [Node] IN Base SCENARIO
SET $test2 = 1 
WHERE right(us_links.link_type,3) = 'PMP';

INSERT INTO [general point]
(point_id, asset_id, category, general_point_x, general_point_y, general_point_z)
IN SCENARIO 'h2s'

SELECT 'PL2G_' + node_id, asset_id, 'PL2G', x, y, ground_level 
FROM [Node] IN Base SCENARIO
WHERE $test2 = 1;