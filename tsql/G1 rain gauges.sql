/* G1 Rain gauges
sql to update rainfall profiles based on scenario name

Object Type: Subcatchment */

LIST $scenarios = 
    'CUR Network'
  , 'MED Network'
  , 'M2L Network'
  , 'LNG Network'
  , 'L2M Network'
  , 'MPD Network'
  , 'SEN Network';

LIST $rain_id = 1, 1, 1, 2, 3, 3, 3;

/* Loops through scenarios and sets rainfall profile based on list above 
and sets evaporation profile to 1 */
LET $c = 1; 
WHILE $c <= LEN($scenarios);
LET $c_string = AREF($c, $scenarios);
LET $r_no = AREF($c, $rain_id);
UPDATE IN SCENARIO $c_string SET rainfall_profile = $r_no, evaporation_profile = 1;
LET $c = $c + 1;
WEND;