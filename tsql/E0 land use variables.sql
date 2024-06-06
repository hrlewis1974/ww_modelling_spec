/* E2 land use variables
sql to assign land use variables to be used for growth calcs

Object Type: Land use*/

// II reduction 
/*user number 1 = CUR II reduction factor
user number 2 = MED II reduction factor
user number 3 = M2L II reduction factor
user number 4 = LNG II reduction factor
user number 5 = MPD II reduction factor*/

SET user_number_1 = 0.012, user_number_1_flag = 'AD',
user_number_2 = 0.040, user_number_2_flag = 'AD',
user_number_3 = 0.080, user_number_3_flag = 'AD',
user_number_4 = 0.120, user_number_4_flag = 'AD',
user_number_5 = 0.200, user_number_5_flag = 'AD'
WHERE pollution_index < 4;


SET user_number_1 = 0, user_number_1_flag = 'XX',
user_number_2 = 0, user_number_2_flag = 'XX',
user_number_3 = 0, user_number_3_flag = 'XX',
user_number_4 = 0, user_number_4_flag = 'XX',
user_number_5 = 0, user_number_5_flag = 'XX'
WHERE pollution_index > 3;

// water reduction
/*user number 6 = CUR water reduction factor
user number 7 = MED water reduction factor
user number 8 = M2L water reduction factor
user number 9 = LNG water reduction factor
user number 10 = MPD water reduction factor*/

SET user_number_6 = 0.015, user_number_6_flag = 'AD',
user_number_7 = 0.050, user_number_7_flag = 'AD',
user_number_8 = 0.100, user_number_8_flag = 'AD',
user_number_9 = 0.100, user_number_9_flag = 'AD',
user_number_10 = 0.100, user_number_10_flag = 'AD'
WHERE pollution_index < 4;

SET user_number_6 = 0, user_number_6_flag = 'XX',
user_number_7 = 0, user_number_7_flag = 'XX',
user_number_8 = 0, user_number_8_flag = 'XX',
user_number_9 = 0, user_number_9_flag = 'XX',
user_number_10 = 0, user_number_10_flag = 'XX'
WHERE pollution_index > 3;

// deterioration
/*user text 1 = CUR deterioration factor
user text 2 = MED deterioration factor
user text 3 = M2L deterioration  factor
user text 4 = LNG deterioration factor
user text 5 = MPD deterioration factor*/

SET user_text_1 = 0.012, user_text_1_flag = 'AD',
user_text_2 = 0.040, user_text_2_flag = 'AD',
user_text_3 = 0.080, user_text_3_flag = 'AD',
user_text_4 = 0.120, user_text_4_flag = 'AD',
user_text_5 = 0.200, user_text_5_flag = 'AD'
WHERE pollution_index < 4;

SET user_text_1 = 0, user_text_1_flag = 'XX',
user_text_2 = 0, user_text_2_flag = 'XX',
user_text_3 = 0, user_text_3_flag = 'XX',
user_text_4 = 0, user_text_4_flag = 'XX',
user_text_5 = 0, user_text_5_flag = 'XX'
WHERE pollution_index > 3;

// density changes
/*user text 6 = CUR density factor
user text 7 = MED density factor
user text 8 = M2L density factor
user text 9 = LNG density factor
user text 10 = MPD density factor*/

SET user_text_6 = 0.01, user_text_6_flag = 'AD',
user_text_7 = 0.01, user_text_7_flag = 'AD',
user_text_8 = 0.01, user_text_8_flag = 'AD',
user_text_9 = 0.01, user_text_9_flag = 'AD',
user_text_10 = 0.01, user_text_10_flag = 'AD'
WHERE pollution_index < 4;

SET user_text_6 = 0, user_text_6_flag = 'XX',
user_text_7 = 0, user_text_7_flag = 'XX',
user_text_8 = 0, user_text_8_flag = 'XX',
user_text_9 = 0, user_text_9_flag = 'XX',
user_text_10 = 0, user_text_10_flag = 'XX'
WHERE pollution_index > 3;