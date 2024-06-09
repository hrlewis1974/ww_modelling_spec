/* C2 Headship
sql to add in default headship values in the polygon table */
/* Object Type: Polygon */
// user_number_6 is the headship rate for CUR scenario
UPDATE IN Base SCENARIO 
SET user_number_6 = 2.7, user_number_6_flag = 'XX' 
WHERE user_number_6 is null;
// user_number_7 is the headship rate for MED scenario
UPDATE IN Base SCENARIO 
SET user_number_7 = 2.7, user_number_7_flag = 'XX' 
WHERE user_number_7 is null;
// user_number_8 is the headship rate for M2L scenario
UPDATE IN Base SCENARIO 
SET user_number_8 = 2.7, user_number_8_flag = 'XX' 
WHERE user_number_8 is null;
// user_number_9 is the headship rate for LNG scenario
UPDATE IN Base SCENARIO 
SET user_number_9 = 2.7, user_number_9_flag = 'XX' 
WHERE user_number_9 is null;
// user_number_10 is the headship rate for MPD scenario
UPDATE IN Base SCENARIO 
SET user_number_10 = 2.7, user_number_10_flag = 'XX' 
WHERE user_number_10 is null;