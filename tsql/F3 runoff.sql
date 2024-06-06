/* F3 Runoff
sql to set variables to update based upon agreed catchment assumptions

Object Type: Subcatchment */

LIST $scenarios = 
    'CUR Network'
  , 'MED Network'
  , 'M2L Network'
  , 'LNG Network'
  , 'L2M Network'
  , 'MPD Network'
  , 'SEN Network';

SET 
$area_percent_1 = area_percent_1, 
$area_percent_2 = area_percent_2, 
$area_percent_3 = area_percent_3, 
$area_percent_4 = area_percent_4;

// Apply deterioration and II remediation based upon catchment assumption

// Loops through scenarios
LET $jr = 1;
WHILE $jr <= LEN($scenarios);
LET $jruid = AREF($jr, $scenarios);

/* Area percentages = 1 + (deterioration rate - II rate) x current area % 
for foul, combined and sanitary subcatchments */
UPDATE IN SCENARIO $jruid SET 
area_percent_1 =  (1+((1 * user_text_9)-(1 * user_text_4))) * $area_percent_1, area_percent_1_flag = 'OP',
area_percent_2 =  (1+((1 * user_text_9)-(1 * user_text_4))) * $area_percent_2, area_percent_2_flag = 'OP',
area_percent_3 =  (1+((1 * user_text_9)-(1 * user_text_4))) * $area_percent_3, area_percent_3_flag = 'OP',
area_percent_4 =  (1+((1 * user_text_9)-(1 * user_text_4))) * $area_percent_4, area_percent_4_flag = 'OP'
WHERE system_type = 'Foul' OR system_type = 'Combined' OR system_type = 'Sanitary';

LET $jr=$jr+1;
WEND;