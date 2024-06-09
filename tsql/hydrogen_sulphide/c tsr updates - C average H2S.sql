/* update average H2S concentration
   for time series data 
   during the second half of the 
   dry weather flow run
*/

SET $flow = AVG(tsr.max_ds_flow)*1000;

UPDATE [Conduit] IN SCENARIO 'h2s'
SET user_number_3 = AVG(tsr.us_links.ds_mch2s)*1000
WHERE $flow is not null
WHEN tsr.timestep_no > tsr.timesteps/2;

UPDATE [Conduit] IN SCENARIO 'h2s'
SET user_number_3_flag = '#G'
WHERE $flow is not null;

UPDATE [Conduit] IN SCENARIO 'h2s' SET 
user_number_4 = user_number_3,
user_number_4_flag = 'XX',
user_number_5 = user_number_3,
user_number_5_flag = 'XX'
WHERE user_number_3 is not null;