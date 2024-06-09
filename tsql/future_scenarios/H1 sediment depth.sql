/* H1 Pipe sediment
sql to change silt depths

Object Type: Conduit */

LIST $scenarios = 
    'CUR Network'
  , 'MED Network'
  , 'M2L Network'
  , 'LNG Network'
  , 'L2M Network'
  , 'MPD Network'
  , 'SEN Network';

// Change silt depths

// Loops through scenarios and sets sediment depth to 0.1 x conduit height
LET $f = 1; 
WHILE $f <= LEN($scenarios);
LET $f_string = AREF($f, $scenarios);
SET $max_sed = 0.10 * conduit_height;

UPDATE IN SCENARIO $f_string SET sediment_depth = $max_sed, 
sediment_depth_flag = 'AD' WHERE sediment_depth > $max_sed;

LET $f = $f + 1;
WEND;