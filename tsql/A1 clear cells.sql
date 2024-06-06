/* A1 Zero USN and UST field
SQL to zero fields used in the calculations */
/* Object Type: Subcatchment */
// Sets all the user fields used in this SQL to null
SET user_number_1 = null, user_number_2 = null,
user_number_3 = null, user_number_4 = null,
user_number_5 = null, user_number_6 = null,
user_number_7 = null, user_number_8 = null,
user_number_9 = null, user_number_10 = null,
user_text_1 = null, user_text_2 = null,
user_text_3 = null, user_text_4 = null,
user_text_5 = null, user_text_6 = null,
user_text_7 = null, user_text_8 = null,
user_text_9 = null,user_text_10 = null,
user_number_1_flag = null, user_number_2_flag = null,
user_number_3_flag = null, user_number_4_flag = null,
user_number_5_flag = null, user_number_6_flag = null,
user_number_7_flag = null, user_number_8_flag = null,
user_number_9_flag = null, user_number_10_flag = null,
user_text_1_flag = null, user_text_2_flag = null,
user_text_3_flag = null, user_text_4_flag = null,
user_text_5_flag = null, user_text_6_flag = null,
user_text_7_flag = null, user_text_8_flag = null,
user_text_9_flag = null,user_text_10_flag = null
WHERE system_type = 'foul' or system_type = 'combined';