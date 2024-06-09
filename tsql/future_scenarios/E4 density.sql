/* E4 Density changes 
sql to assign density change variables to subs from polyfon table

Object Type: Subcatchment*/

LIST $scenarios = 
    'CUR Network'
  , 'MED Network'
  , 'M2L Network'
  , 'LNG Network'
  , 'L2M Network'
  , 'MPD Network'
  , 'SEN Network';

// Work out deterioration rates

// Loop through updates
LIST $densityuids STRING;
SELECT DISTINCT oid INTO $densityuids FROM [Land Use];
LET $density=1;
WHILE $density<=LEN($densityuids);
LET $densityuid=AREF($density,$densityuids);

// User text 6 - 10 were set in SQL E0
SELECT (1*user_text_6) INTO $densityCUR,
(1*user_text_7) INTO $densityMED,
(1*user_text_8) INTO $densityM2L,
(1*user_text_9) INTO $densityLNG,
(((1*user_text_9)+(1*user_text_10))/2) INTO $densityL2M,
(1*user_text_10) INTO $densityMPD,
(1*user_text_10) INTO $densitySEN // no change in sen scenario

FROM [Land Use] WHERE oid=$densityuid;

UPDATE IN Base SCENARIO 
SET $user_text_7 = 
'CUR' + FIXED($densityCUR,2) +
'MED' + FIXED($densityMED,2) + 
'M2L' + FIXED($densityM2L,2) + 
'LNG' + FIXED($densityLNG,2) + 
'L2M' + FIXED($densityL2M,2) + 
'MPD' + FIXED($densityMPD,2) + 
'SEN' + FIXED($densitySEN,2)
WHERE land_use_id = $densityuid;

LET $density=$density+1;
WEND;

///////////////////////////////////////////////////////////////////////
// Loops through scenarios and sets user text 7 to the density rate
LET $densityr = 1;
WHILE $densityr <= LEN($scenarios);
LET $densityruid = AREF($densityr, $scenarios);

UPDATE IN SCENARIO $densityruid
SET $densityrate =  MID($user_text_7,4+(($densityr-1)*7),4), 
user_text_7 = $densityrate, user_text_7_flag = '#I';

LET $densityr=$densityr+1;
WEND;