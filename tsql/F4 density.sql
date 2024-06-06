/* F4 Density Changes
Density: Increase in the number of private wastewater laterals (catchment density). 
Where an absolute 1% increase in catchment I/I for an increase in density of 10 People / Ha, with an upper limit of 50 People / Ha above which no increase in I/I contribution is assumed.

Object Type: Subcatchment */

LIST $scenarios = 
    'CUR Network'
  , 'MED Network'
  , 'M2L Network'
  , 'LNG Network'
  , 'L2M Network'
  , 'MPD Network'
  , 'SEN Network';

// Work out current population density
LIST $stype = 'combined', 'foul', 'other', 'overland', 'sanitary', 'storm';
LIST $stype_score = 1, 1, 0, 0, 0, 0;

// Calculates score (given above) x population / total area with the maximum value being 50
UPDATE IN Base SCENARIO SET 
$user_text_10 = IIF(AREF(INDEX(system_type, $stype), $stype_score) * FIXED(population / total_area, 0) >=50, 50, AREF(INDEX(system_type, $stype), $stype_score) * FIXED(population / total_area, 0));

// Loop through other population density calcualtions

LET $tr = 1;
WHILE $tr <= LEN($scenarios);
LET $truid = AREF($tr, $scenarios);

// UPDATE IN SCENARIO $truid SET 
// user_text_10 = IIF(AREF(INDEX(system_type, $stype), $stype_score) * FIXED(population / total_area, 0) >=50, 50, AREF(INDEX(system_type, $stype), $stype_score) * FIXED(population / total_area, 0));

UPDATE IN SCENARIO $truid SET 
user_text_10 = INT((((IIF(AREF(INDEX(system_type, $stype), $stype_score) * FIXED(population / total_area, 0) >=50, 50, AREF(INDEX(system_type, $stype), $stype_score) * FIXED(population / total_area, 0))) - $user_text_10)/10)),
user_text_10_flag = '#I';

LET $tr=$tr+1;
WEND;