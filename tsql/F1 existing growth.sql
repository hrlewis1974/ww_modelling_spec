/* F1 Existing
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

// Set non-spatial variables for each sub
SET $population = population, 
$add_foul_flow = additional_foul_flow, 
$trade_flow = trade_flow, 
$base_flow = base_flow,
$connectivity = connectivity,
$contributing_area = contributing_area;

// Loops through scenarios
LET $gr = 1;
WHILE $gr <= LEN($scenarios);
LET $gruid = AREF($gr, $scenarios);

/* For foul or combined subcatchments population is set to infill rate x population
and connectivity is set to 1 - water reduction rate x connectivity */
UPDATE IN SCENARIO $gruid SET 
population = (1*user_text_3) * $population, population_flag = 'OP',
connectivity =(1- (1*user_text_8)) * $connectivity, connectivity_flag = 'OP'
WHERE system_type = 'Foul' OR system_type = 'Combined';

/* For subcatchments of type 'other' additional foul flow is set to infill rate x AFF
and trade flow is set infill rate x trade flow
UPDATE IN SCENARIO $gruid SET 
additional_foul_flow = (1*user_text_3) * $add_foul_flow, additional_foul_flow_flag = 'OP', 
trade_flow = (1*user_text_3) * $trade_flow, trade_flow_flag = 'OP' 
WHERE system_type = 'other';

/* For overland type subcatchments contributing area is set to infill rate x contributing area, 
AFF is set to infill rate x AFF, and base flow is set to infill rate x baseflow
UPDATE IN SCENARIO $gruid SET 
contributing_area =  (1*user_text_3) * $contributing_area, contributing_area_flag = 'OP', 
additional_foul_flow = (1*user_text_3) * $add_foul_flow, additional_foul_flow_flag = 'OP', 
base_flow = (1*user_text_3) * $base_flow, base_flow_flag = 'OP' 
WHERE system_type = 'overland';

LET $gr=$gr+1;
WEND;