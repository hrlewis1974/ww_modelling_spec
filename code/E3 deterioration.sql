/* E3 Deteriroation changes 
sql to assign deteriroarion change variables to subs from polyfon table

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
LIST $detuids STRING;
SELECT DISTINCT oid INTO $detuids FROM [Land Use];
LET $det=1;
WHILE $det<=LEN($detuids);
LET $detuid=AREF($det,$detuids);

//User text 1 - 5 were set in SQL E0
SELECT (1*user_text_1) INTO $detCUR,
(1*user_text_2) INTO $detMED,
(1*user_text_3) INTO $detM2L,
(1*user_text_4) INTO $detLNG,
(((1*user_text_4)+(1*user_text_5))/2) INTO $detL2M,
(1*user_text_5) INTO $detMPD,
(1*user_text_5) INTO $detSEN // no change in sen scenario

FROM [Land Use] WHERE oid=$detuid;

UPDATE IN Base SCENARIO 
SET $user_text_9 = 
'CUR' + FIXED($detCUR,2) +
'MED' + FIXED($detMED,2) + 
'M2L' + FIXED($detM2L,2) + 
'LNG' + FIXED($detLNG,2) + 
'L2M' + FIXED($detL2M,2) + 
'MPD' + FIXED($detMPD,2) + 
'SEN' + FIXED($detSEN,2)
WHERE land_use_id = $detuid;

LET $det=$det+1;
WEND;

///////////////////////////////////////////////////////////////////////
// Loops through each scenario and sets user text 9 to the deterioration rate

LET $detr = 1;
WHILE $detr <= LEN($scenarios);
LET $detruid = AREF($detr, $scenarios);

UPDATE IN SCENARIO $detruid
SET $detrate =  MID($user_text_9,4+(($detr-1)*7),4), 
user_text_9 = $detrate, user_text_9_flag = '#I';

LET $detr=$detr+1;
WEND;