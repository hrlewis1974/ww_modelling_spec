/* F2 New
sql to make changes to each scenario for existing development and new sites

Object Type: Subcatchment */

LIST $scenarios = 
    'CUR Network'
  , 'MED Network'
  , 'M2L Network'
  , 'LNG Network'
  , 'L2M Network'
  , 'MPD Network'
  , 'SEN Network';

// set non-spatial variables for each sub
LET $base = 0.001; // m³/s/km²
//LET $shopping = 4; // m³/m²/yr at 20L/h/day
//LET $lotsize = 10000 * user_text_10;

// Loop through scenarios
LET $yr = 1;
WHILE $yr <= LEN($scenarios);
LET $yruid = AREF($yr, $scenarios);

/* For brownfield developments, population is set to headship x no. of units
and contributing area is set to 0 */
UPDATE IN SCENARIO $yruid SET 
population = (1 * user_text_5) * (1 * user_text_6), population_flag = 'OP',
contributing_area = 0, contributing_area_flag = 'OP'
WHERE land_use_id = 'BROWNFIELD';

/* For potential or developed areas, population is set to 0
and contributing area is set to 0 */
UPDATE IN SCENARIO $yruid SET 
population = 0, population_flag = 'OP',
contributing_area = 0, contributing_area_flag = 'OP'
WHERE land_use_id = 'POTENTIAL' OR land_use_id = 'DEVELOPED';

/* For greenfield or infill developments, population is set to headship x no. of units, 
contributing area is set to either no. of units x lot size or current total area, whichever is largest,
and base flow is set to ((no. of units x lot size x 10000)/1000000) x base flow */
UPDATE IN SCENARIO $yruid SET 
population = (1 * user_text_5) * (1 * user_text_6), population_flag = 'OP',
contributing_area = IIF(((1*user_text_6) * (user_number_6)) > total_area, total_area, ((1*user_text_6) * (user_number_6))), contributing_area_flag = 'OP', 
base_flow = (((((1 * user_text_6 * (user_number_6))) * 10000) / 1000000) * $base), base_flow_flag = 'OP' 
WHERE land_use_id = 'GREENFIELD' OR land_use_id = 'INFILL';

/* For new commercial developments, population is set to no. of lots
and contributing area is set to 0 */
UPDATE IN SCENARIO $yruid SET 
population = (1 * user_text_6), population_flag = 'OP',
contributing_area = 0, contributing_area_flag = 'OP'
WHERE land_use_id = 'NEW COMMERCIAL';

/* For rural areas, population is set to headship rate x no. of lots, and contributing area,
baseflow and connectivity are set to 0 */
UPDATE IN SCENARIO $yruid SET 
population = (1 * user_text_5) * (1 * user_text_6), population_flag = 'OP', 
contributing_area = 0, contributing_area_flag = 'OP', 
base_flow = 0, base_flow_flag = 'OP',
connectivity = 0, connectivity_flag = 'OP'
WHERE land_use_id = 'RURAL';

LET $yr=$yr+1;
WEND;