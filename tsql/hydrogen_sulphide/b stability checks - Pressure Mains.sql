UPDATE [Node] SET flood_type = 'sealed', flood_type_flag = 'AD', node_type = 'manhole', node_type_flag = 'sealed';

UPDATE [Node] SET ground_level = ds_links.us_invert + (((ds_links.conduit_height) + 10)/1000), ground_level_flag = 'AD';

UPDATE [Node] SET flood_level_flag = '#D', chamber_floor_flag = '#D',  chamber_roof = ground_level, chamber_roof_flag = 'AD';

UPDATE [Conduit] SET solution_model = 'Pressure', solution_model_flag = 'AD', us_headloss_type = 'FIXED', us_headloss_type_flag = 'AD', us_headloss_coeff = 0, us_headloss_coeff_flag = 'AD', ds_headloss_type = 'FIXED', ds_headloss_type_flag = 'AD', ds_headloss_coeff = 0, ds_headloss_coeff_flag = 'AD';