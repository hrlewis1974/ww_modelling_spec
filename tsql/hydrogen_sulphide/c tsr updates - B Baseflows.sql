/* drag the sim on top of the update network
     ls per hectare
*/

SET $base_min = (MIN(tsr.node.qnode) * 1000) / total_area;
SET $base_max = (MAX(tsr.node.qnode) * 1000) / total_area;

UPDATE [Subcatchment] IN SCENARIO 'h2s' SET 
user_number_1 = $base_min,
user_number_2 = $base_max,
user_number_1_flag = '#G',
user_number_2_flag = '#G'
WHERE $base_min is not null;