/* C1 Polygon
sql to update polygon id to all subatchments.
Note a manual check will need to be done to confirm
subcatchments where user_text_1 is null */
/* Object Type: Subcatchment */
/* Spatial Search
   Search Type: Inside
   Layer Type" Network layer
   Layer: Polygon */
// Sets user text 1 in all subcatchments to the id of the polygon it is located within
UPDATE IN Base SCENARIO SET 
user_text_1 = spatial.polygon_id, 
user_text_1_flag = '#G' 
WHERE user_text_1 is null;  