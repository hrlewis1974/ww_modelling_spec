/* added peak h2s into usn3 to 5
    usn3 = 50th percentile
    usn4 = 75th percentile
    usn5 = 90th percentile
    preliminary set usn6 based on conduit.system_type
*/

UPDATE [Conduit] IN SCENARIO 'h2s' SET 
user_number_6 = user_number_3, user_number_6_flag = 'AS'
WHERE system_type = 'foul';

UPDATE [Conduit] IN SCENARIO 'h2s' SET 
user_number_6 = user_number_5, user_number_6_flag = 'AS'
WHERE system_type <> 'foul';