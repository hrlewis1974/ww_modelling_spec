/* D4 Greenfield lot size
sql to set total area based on lot sizes

Object Type: Subcatchment */

LIST $scenarios = 
    'CUR Network'
  , 'MED Network'
  , 'M2L Network'
  , 'LNG Network'
  , 'L2M Network'
  , 'MPD Network'
  , 'SEN Network';

//Loop through each scenario
LET $mr = 1;
WHILE $mr <= LEN($scenarios);
LET $mruid = AREF($mr, $scenarios);

// Set lot size based upon type of growth with 600 for inflll 
// and 1000 for greenfield

UPDATE IN SCENARIO $mruid SET 
user_number_6 = 0.0600, user_number_6_flag = 'OP'
WHERE land_use_id = 'POTENTIAL' 
    OR land_use_id = 'DEVELOPED' 
    OR land_use_id = 'INFILL';

UPDATE IN SCENARIO $mruid SET 
user_number_6 = 0.1000, user_number_6_flag = 'OP'
WHERE land_use_id = 'GREENFIELD';

// user number 6 = Lot size

LET $mr=$mr+1;
WEND;