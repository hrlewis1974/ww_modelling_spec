/* D1 Infill Growth* 
sql to work out Infill rates for each sub based on the number 
in the polygon table

Object Type: Subcatchment */

LIST $scenarios = 'CUR Network', 'MED Network', 'M2L Network', 'LNG Network', 'L2M Network', 'MPD Network', 'SEN Network';

// Work out Infill rates for each sub based on the number in the polygon table

// Loop through updates
LIST $guids STRING;
SELECT DISTINCT oid INTO $guids FROM [Polygon];
LET $g=1;
WHILE $g<=LEN($guids);
LET $guid=AREF($g,$guids);

// Infill rates to be applied to current populations
/* polygon.user_text_6 = estimated population
polygon.user_number_6 = headship
polygon.user_text_1 = CUR development site lots
polygon.user_number_1 = modelled population */

// Calculates infill rates based on the population forcast minus the population from new developments

SELECT 1+(((1*user_text_6)-((user_number_6*(1*user_text_1))+user_number_1))/user_number_1)
INTO $gCUR FROM [Polygon] WHERE oid=$guid;

SELECT 1+(((1*user_text_7)-((user_number_7*(1*user_text_2))+user_number_1))/user_number_1)
INTO $gMED FROM [Polygon] WHERE oid=$guid;

SELECT 1+(((1*user_text_8)-((user_number_8*(1*user_text_3))+user_number_1))/user_number_1)
INTO $gM2L FROM [Polygon] WHERE oid=$guid;

SELECT 1+(((1*user_text_9)-((user_number_9*(1*user_text_4))+user_number_1))/user_number_1)
INTO $gLNG FROM [Polygon] WHERE oid=$guid;

SELECT 
((1+(((1*user_text_9)-((user_number_9*(1*user_text_4))+user_number_1))/user_number_1)) +
(1+(((1*user_text_10)-((user_number_10*(1*user_text_5))+user_number_1))/user_number_1)))/2
INTO $gL2M FROM [Polygon] WHERE oid=$guid;

SELECT 1+(((1*user_text_10)-((user_number_10*(1*user_text_5))+user_number_1))/user_number_1) 
INTO $gMPD FROM [Polygon] WHERE oid=$guid;

SELECT (1+(((1*user_text_10)-((user_number_10*(1*user_text_5))+user_number_1))/user_number_1)) * 1.25
INTO $gSEN FROM [Polygon] WHERE oid=$guid;

UPDATE IN Base SCENARIO 
SET $user_text_3 = 
'CUR' + FIXED($gCUR/1000,6) +
'MED' + FIXED($gMED/1000,6) + 
'M2L' + FIXED($gM2L/1000,6) + 
'LNG' + FIXED($gLNG/1000,6) + 
'L2M' + FIXED($gL2M/1000,6) + 
'MPD' + FIXED($gMPD/1000,6) + 
'SEN' + FIXED($gSEN/1000,6)
WHERE user_text_1 = $guid;

LET $g=$g+1;
WEND;

///////////////////////////////////////////////////////////////////////
// Loops through and sets infill rate for each scenario
LET $gr = 1;
WHILE $gr <= LEN($scenarios);
LET $gruid = AREF($gr, $scenarios);

UPDATE IN SCENARIO $gruid
SET $grate =  MID($user_text_3,4+(($gr-1)*11),8)*1000,
user_text_3 = $grate, user_text_3_flag = '#I';
//user text 3 = Scenario infill rate

LET $gr=$gr+1;
WEND;