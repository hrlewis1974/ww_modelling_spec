/* B1 Scenarios
script to create scenarios based on a LIST */
/* Object Type: land use */
//Create list of scenarios
LIST $scenarios = 
    'CUR Network'   --3 yrs
  , 'MED Network'   --10 yrs
  , 'M2L Network'   --20 yrs
  , 'LNG Network'   --30 yrs
  , 'L2M Network'   --40 yrs
  , 'MPD Network'   --50 yrs
  , 'SEN Network';
// Create various scenarios
//Runs through the list above and creates a scenario for each line of the list
// (Aref returns the nth value of a string)
LET $s = 1; 
WHILE $s <= LEN($scenarios);
LET $s_string = AREF($s, $scenarios);
ADD SCENARIO $s_string;
LET $s = $s + 1;
WEND;