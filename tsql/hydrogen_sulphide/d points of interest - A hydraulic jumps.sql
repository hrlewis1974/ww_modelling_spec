/* create new general points to indicate
   hydraulic jumps within the network
   once the sql has run go through each new general point
   and remove ones not applicable
*/

UPDATE [Node] IN Base SCENARIO SET 
$drop = ((MIN(us_links.ds_invert)-MIN(ds_links.us_invert))*1000);

UPDATE [Node] IN Base SCENARIO SET 
$size = 'S' WHERE $drop < 500;

UPDATE [Node] IN Base SCENARIO SET 
$size = 'M' WHERE $drop >= 500 AND $drop < 1000;

UPDATE [Node] IN Base SCENARIO SET 
$size = 'L' WHERE $drop >= 1000;

INSERT INTO [general point]
(point_id, asset_id, category, general_point_x, general_point_y, general_point_z)
IN SCENARIO 'h2s'

SELECT 'DROP_' + node_id, asset_id, 'DROP_' + $size, x, y, ground_level 
FROM [Node] IN Base SCENARIO
WHERE MIN(us_links.ds_invert) is not null 
AND MIN(ds_links.us_invert) is not null
AND $drop > 200;