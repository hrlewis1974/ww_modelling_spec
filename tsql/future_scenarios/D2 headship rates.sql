
/* D2 headship rates
sql to work out headship rates and apply this number to ust5 field

Object Type: Subcatchment */

LIST $scenarios = 'CUR Network', 'MED Network', 'M2L Network', 'LNG Network', 'L2M Network', 'MPD Network', 'SEN Network';

// Work out headship rates and apply this number to ust5 field

// Loop through updates

LIST $zuids STRING;
SELECT DISTINCT oid INTO $zuids FROM [Polygon];
LET $z=1;
WHILE $z<=LEN($zuids);
LET $zuid=AREF($z,$zuids);

// Infill rates to be applied to use for various future scenarios taken from polygon table
SELECT 
user_number_6 INTO $zCUR,
user_number_7 INTO $zMED,
user_number_8 INTO $zM2L,
user_number_9 INTO $zLNG,
((user_number_9+user_number_10)/2) INTO $zL2M,
user_number_10 INTO $zMPD,
user_number_10 INTO $zSEN // not increased the headship rate in the future
FROM [Polygon] WHERE oid=$zuid;

// Update a full list of the variables to user_text_5 field
UPDATE IN Base SCENARIO SET $user_text_5 = 
'CUR' + FIXED($zCUR,2) +
'MED' + FIXED($zMED,2) + 
'M2L' + FIXED($zM2L,2) + 
'LNG' + FIXED($zLNG,2) + 
'L2M' + FIXED($zL2M,2) + 
'MPD' + FIXED($zMPD,2) + 
'SEN' + FIXED($zSEN,2)
WHERE user_text_1 = $zuid;

LET $z=$z+1;
WEND;

///////////////////////////////////////////////////////////////////////

// Add the headship rates to ust5 field to allow calcs further down the track

LET $zr = 1;
WHILE $zr <= LEN($scenarios);
LET $zruid = AREF($zr, $scenarios);

UPDATE IN SCENARIO $zruid
SET $zrate =  MID($user_text_5,4+(($zr-1)*7),4),
user_text_5 = $zrate, user_text_5_flag = '#I';
//user text 5 = Scenario headship rate

LET $zr=$zr+1;
WEND;