/* E2 land use variables
sql to assign ii reduction factors to subcatchments based
on what has been set in the polygon table

Object Type: Subcatchment*/

LIST $scenarios = 
    'CUR Network'
  , 'MED Network'
  , 'M2L Network'
  , 'LNG Network'
  , 'L2M Network'
  , 'MPD Network'
  , 'SEN Network';

// Work out II rates for each subcatchment based on the number 
// in the landuse table set in the previous SQL

LIST $xuids STRING;
SELECT DISTINCT oid INTO $xuids FROM [Land Use];
LET $x=1;

WHILE $x<=LEN($xuids);
LET $xuid=AREF($x,$xuids);

SELECT 
MAX(user_number_1) INTO $xCUR, 
MAX(user_number_2) INTO $xMED, 
MAX(user_number_3) INTO $xM2L, 
MAX(user_number_4) INTO $xLNG, 
(MAX(user_number_4) + MAX(user_number_5))/2 INTO $xL2M, 
MAX(user_number_5) INTO $xMPD,
MAX(user_number_5) INTO $xSEN 
FROM [Land Use] WHERE oid=$xuid;

UPDATE IN Base SCENARIO SET $user_text_4 = 
'CUR' + FIXED($xCUR,2) + 
'MED' + FIXED($xMED,2) + 
'M2L' + FIXED($xM2L,2) + 
'LNG' + FIXED($xLNG,2) + 
'L2M' + FIXED($xL2M,2) + 
'MPD' + FIXED($xMPD,2) + 
'SEN' + FIXED($xSEN,2)
WHERE land_use_id = $xuid;

LET $x=$x+1;
WEND;

///////////////////////////////////////////////////////////////////////
// Loops through each scenario and sets user text 4 to the II rate

LET $xr = 1;
WHILE $xr <= LEN($scenarios);
LET $xruid = AREF($xr, $scenarios);

UPDATE IN SCENARIO $xruid SET 
$xrate =  MID($user_text_4,4+(($xr-1)*7),4),
user_text_4 = $xrate, user_text_4_flag = '#I';

LET $xr=$xr+1;
WEND;