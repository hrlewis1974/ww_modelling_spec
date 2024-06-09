/* drag the sim on top of the update network
   update speed to conduit.usn1
*/
LET $min_speed = 0.01;   // Assumed minimum average travel velocity in pipes.
LET $n_hours = 48;       // Total number of hours in the simulation;

LET $start = 0;
LET $end = $n_hours ;

PROMPT TITLE "Define Parameters";
PROMPT LINE $min_speed "Minimum assumed average velocity" DP 3;
PROMPT LINE $start "Start hour (0-24)" DP 3;
PROMPT LINE $end "End hour (0-24)" DP 3;
PROMPT DISPLAY;

SET $left = $start*MAX(tsr.timesteps)/$n_hours, $right = $end*MAX(tsr.timesteps)/$n_hours;
SET $speed = AVG(IIF((tsr.timestep_no > $left) AND (tsr.timestep_no < $right),tsr.us_vel,NULL));
SET $speed = $min_speed WHERE $speed<$min_speed;
SET $travel_time = IIF(conduit_length IS NOT NULL,conduit_length,1) / $speed / 60;

UPDATE [Conduit] IN SCENARIO 'h2s' SET 
user_number_1 = $speed, 
user_number_2 = $travel_time, 
user_number_1_flag = '#G', 
user_number_2_flag = '#G'
WHERE $speed is not null;