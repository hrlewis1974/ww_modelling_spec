/* F5 Runoff Areas
sql to add in extra runoff area to account for 
population density changes

Object Type: Subcatchment */

LIST $scenarios = 
    'CUR Network'
  , 'MED Network'
  , 'M2L Network'
  , 'LNG Network'
  , 'L2M Network'
  , 'MPD Network'
  , 'SEN Network';

// Add in extra runoff area to account for population density changes
// Loop through scenarios
LET $er = 1;
WHILE $er <= LEN($scenarios);
LET $eruid = AREF($er, $scenarios);
// SET $change = (1+((1*user_text_10)*0.01));

// Area % = area % x (1 + (density adjustment x density rate/10)) for foul and combined subcatchments
UPDATE IN SCENARIO $eruid SET 
area_percent_1 = area_percent_1 * (1+((1*user_text_10)*(1 * user_text_7)/10)), area_percent_1_flag = 'OP',
area_percent_2 = area_percent_2 * (1+((1*user_text_10)*(1 * user_text_7)/10)), area_percent_2_flag = 'OP',
area_percent_3 = area_percent_3 * (1+((1*user_text_10)*(1 * user_text_7)/10)), area_percent_3_flag = 'OP',
area_percent_4 = area_percent_4 * (1+((1*user_text_10)*(1 * user_text_7)/10)),  area_percent_4_flag = 'OP'
WHERE system_type = 'foul' OR system_type = 'combined';

LET $er=$er+1;
WEND;