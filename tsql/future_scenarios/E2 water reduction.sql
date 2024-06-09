/* E2 Water Reduction 
sql to assign water reduction variables to subs from polyfon table

Object Type: Subcatchment*/

LIST $scenarios = 'CUR Network', 'MED Network', 'M2L Network', 'LNG Network', 'L2M Network', 'MPD Network', 'SEN Network';

// Work out water reduction rates

// Loop through updates
LIST $wateruids STRING;
SELECT DISTINCT oid INTO $wateruids FROM [Land Use];
LET $water=1;
WHILE $water<=LEN($wateruids);
LET $wateruid=AREF($water,$wateruids);

// Collect reduction rates for each flow monitor region and create a list for each sub
// These are taken from the values set in E0
SELECT user_number_6 INTO $waterCUR,
user_number_7 INTO $waterMED,
user_number_8 INTO $waterM2L, 
user_number_9 INTO $waterLNG, 
((user_number_9+user_number_10)/2) INTO $waterL2M,
user_number_10 INTO $waterMPD,
user_number_10 INTO $waterSEN // no change in water reduction for sensitivuty scenario
FROM [Land Use] WHERE oid=$wateruid;

UPDATE IN Base SCENARIO 
SET $user_text_8 = 
'CUR' + FIXED($waterCUR,2) +
'MED' + FIXED($waterMED,2) + 
'M2L' + FIXED($waterM2L,2) + 
'LNG' + FIXED($waterLNG,2) + 
'L2M' + FIXED($waterL2M,2) + 
'MPD' + FIXED($waterMPD,2) + 
'SEN' + FIXED($waterSEN,2)
WHERE land_use_id = $wateruid;

LET $water=$water+1;
WEND;

///////////////////////////////////////////////////////////////////////
// Loops through each scenario and sets user text 8 to the water reduction rate

LET $waterr = 1;
WHILE $waterr <= LEN($scenarios);
LET $waterruid = AREF($waterr, $scenarios);

UPDATE IN SCENARIO $waterruid
SET 
$waterrate =  MID($user_text_8,4+(($waterr-1)*7),4), 
user_text_8 = $waterrate, user_text_8_flag = '#I';

LET $waterr=$waterr+1;
WEND;