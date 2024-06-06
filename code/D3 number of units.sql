/* D3 Number of Units and Confirm PE
sql to work out number of new units for each scenario into a list

Object Type: Subcatchment */

LIST $scenarios = 'CUR Network', 'MED Network', 'M2L Network', 'LNG Network', 'L2M Network', 'MPD Network', 'SEN Network';

// Work out number of new units for each scenario into a list

UPDATE IN Base SCENARIO SET $user_text_6 = 
'CUR' + FIXED((user_number_1)/10000,5) +
'MED' + FIXED((user_number_2)/10000,5) + 
'M2L' + FIXED((user_number_3)/10000,5) + 
'LNG' + FIXED((user_number_4)/10000,5) + 
'L2M' + FIXED(((user_number_4 + user_number_5)/2)/10000,5) + 
'MPD' + FIXED((user_number_5)/10000,5) + 
'SEN' + FIXED((user_number_5) * 1.25/10000,5);
// User numbers 1 - 5 are the total lots forecast for each scenario

// Add the headship rates to ust6 field to allow calcs further down the track

LET $qr = 1;
WHILE $qr <= LEN($scenarios);
LET $qruid = AREF($qr, $scenarios);

UPDATE IN SCENARIO $qruid
SET $qrate =  MID($user_text_6,4+(($qr-1)*10),7)*10000,
user_text_6 = $qrate, user_text_6_flag = '#I';
// user text 6 = Scenario number of units

LET $qr=$qr+1;
WEND;