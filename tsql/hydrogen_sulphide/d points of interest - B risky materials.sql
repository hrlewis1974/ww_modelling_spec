/* create new general lines to represent
   pipe materials that are susceptible to corrosion
   once the sql has run go through each new general line
   and remove ones not applicable
*/

LIST $bad = 'RC', 'AC', 'CLS', 'S' , 'ABS', 'CE', 'RCRRJ';
LIST $good = 'PVC', 'PE', 'CIPP';

INSERT INTO [general point]
(point_id, asset_id, category, general_point_x, general_point_y, general_point_z)
IN SCENARIO 'h2s'

SELECT 'SUSC_' + node_id, asset_id, 'SUSC', x, y, ground_level 
FROM [Node] IN Base SCENARIO
WHERE MEMBER(ds_links.conduit_material, $bad)=1