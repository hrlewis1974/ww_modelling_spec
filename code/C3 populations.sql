/* C3 Populations
sql to work out current modelled populations and other modelled parameters
and to add in development populations
 */
/* Object Type: Polygon */
// Runs process through each catchment polygon
LIST $luids STRING;
SELECT DISTINCT user_text_1 INTO $luids FROM [Subcatchment];
LET $p=1;
WHILE $p<=LEN($luids);
LET $luid=AREF($p,$luids);
// Work out current modelled populations
/* Sums the population, addtional foul flow, trade flow, base flow and total area
of all foul or combined subcatchments for the given polygon into a variable */
SELECT SUM(population) INTO $pop_un1 FROM [Subcatchment] 
WHERE user_text_1 = $luid AND (system_type = 'Foul' OR system_type = 'combined');
SELECT SUM(additional_foul_flow) INTO $pop_un2 FROM [Subcatchment] 
WHERE user_text_1 = $luid AND (system_type = 'Foul' OR system_type = 'combined');
SELECT SUM(trade_flow) INTO $pop_un3 FROM [Subcatchment] 
WHERE user_text_1 = $luid AND (system_type = 'Foul' OR system_type = 'combined');
SELECT SUM(base_flow) INTO $pop_un4 FROM [Subcatchment] 
WHERE user_text_1 = $luid AND (system_type = 'Foul' OR system_type = 'combined');
SELECT SUM(total_area) INTO $pop_un5 FROM [Subcatchment] 
WHERE user_text_1 = $luid AND (system_type = 'Foul' OR system_type = 'combined');
// Assigns the values from step above into the user number fields of the catchment polygon
UPDATE IN Base SCENARIO SET 
user_number_1 = NVL($pop_un1, 0), user_number_1_flag = '#G',
user_number_2 = NVL($pop_un2, 0), user_number_2_flag = '#G', 
user_number_3 = NVL($pop_un3, 0), user_number_3_flag = '#G', 
user_number_4 = NVL($pop_un4, 0), user_number_4_flag = '#G', 
user_number_5 = NVL($pop_un5, 0), user_number_5_flag = '#G' 
WHERE polygon_id = $luid;
/* user number 1 = population
user number 2 = additional foul flow 
user number 3 = trade flow
user number 4 = base flow
user number 5 = total area */
//Add in development populations
/*Sums the lot numbers from the subcatchments expected to be developed and 
puts this into the user text fields for the polygon*/
SELECT SUM(user_number_1) INTO $dpop_ut1 FROM [Subcatchment] 
WHERE user_text_1 = $luid AND system_type = 'Sanitary';
UPDATE IN Base SCENARIO SET user_text_1 = NVL($dpop_ut1, 0), user_text_1_flag = '#G' 
WHERE polygon_id = $luid;
// user text 1 = CUR forecast total lots
SELECT SUM(user_number_2) INTO $dpop_ut2 FROM [Subcatchment] 
WHERE user_text_1 = $luid AND system_type = 'Sanitary';
UPDATE IN Base SCENARIO SET user_text_2 = NVL($dpop_ut2, 0), user_text_2_flag = '#G'
 WHERE polygon_id = $luid;
// user text 2 = MED forecast total lots
SELECT SUM(user_number_3) INTO $dpop_ut3 FROM [Subcatchment] 
WHERE user_text_1 = $luid AND system_type = 'Sanitary';
UPDATE IN Base SCENARIO SET user_text_3 = NVL($dpop_ut3, 0), user_text_3_flag = '#G' 
WHERE polygon_id = $luid;
// user text 3 = M2L forecast total lots
SELECT SUM(user_number_4) INTO $dpop_ut4 FROM [Subcatchment] 
WHERE user_text_1 = $luid AND system_type = 'Sanitary';
UPDATE IN Base SCENARIO SET user_text_4 = NVL($dpop_ut4, 0), user_text_4_flag = '#G' 
WHERE polygon_id = $luid;
// user text 4 = LNG forecast total lots
SELECT SUM(user_number_5) INTO $dpop_ut5 FROM [Subcatchment] 
WHERE user_text_1 = $luid AND system_type = 'Sanitary';
UPDATE IN Base SCENARIO SET user_text_5 = NVL($dpop_ut5, 0), user_text_5_flag = '#G' 
WHERE polygon_id = $luid;
// user text 5 = MPD forecast total lots
LET $p=$p+1;
WEND;