# Appendix I - Scenario Development setup for ICM

In order to run these SQL, WWL are to provide the following information, or the consultant is to develop and confirm with WWL.

## Polygon

forecast.id Small Growth Area (or other area defining a resident population) and population forecasts over each horizon

* user number 6 to 10: estimated headship rates over time. 
* user text 6 to 10: estimated population for each small growth area over time

## Subcatchment

Greenfield and New Development Areas as sanitary type subcatchments with a forecast lot update and the appropriate land use type.

* User numbers 1 through 5 fields required to be the forecast cumulative number of lots developed for residential, and 
* user numbers 6 though 10 with a 50 L/s PE equivalent for new commercial areas

##Land Use

Contains the catchment-wide assumptions for each scenario relating to:

* User numbers 1 through 5 – Inflow and Infiltration reduction programmes
  * specific allowances can be for inflow and infiltation reduction
  * II reduction rates can vary between  4% and 20%
  * the above rates will be appplied to each scenario by adjustting all runoff area percentages
* User numbers 6 through 10 – Water Consumption reduction
  * an allowance for a 10% reduction in water use is to be applied over the next 35 years
  * these conditions will need to be confirmed with WWL staff
  * the above rates will be applied to each scenario by reducing the connectivity percentage
* User Text 1 through 5 – Deterioration
  * age deterioration of network as it ages a 25% increase in I/I per 50yrs is assumed
  * the above rates will be applied to each scenario by reducing the fast runoff percentages
* User Text 6 through 10 – Population Density effects
  * increase in the number of private wastewater laterals (catchment density)
  * where an absolute 1% increase in catchment I/I for an increase in density of 10 People / Ha, with an upper limit of 50 People  / Ha above which no increase in I/I contribution is assumed
  * the above rates will be applied to each scenario by increasing all runoff area percenatges

All the above conditions should be re-confirmed with WWL.

Appendix H shows the mapping of this data, whilst the table below steps through the scope and target of each query.

## Development of Model Scenarios through SQL Update Process

Sets fields to zero To ensure that fields used for subsequent calculations are cleared from previous modelling phases
https://github.com/hrlewis1974/ww_modelling_spec/blob/a28079c640921513a945767a11626f7a3c8f3ead/code/A1%20clear%20cells.sql#L1-L25

Updates each subcatchment user text 1 with the forecast.id small growth area identifier
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/B1%20scenarios.sql#L1-L21

Updates each subcatchment user text 1 with the forecast.id small growth area identifier
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/C1%20polygon.sql#L1-L67

Sets a default headship rate for small growth areas, if not otherwise known/provided in the polygon file
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/C2%20headship.sql#L1-L23

Calculates the existing population, additional foul flow, trade flow, base flow and total area from the calibrated model for each small growth area and updates the polygon fields with this data in user numbers 1 through 5 respective

Updates user text 1 through 5 of the polygon with the no. of greenfield lots
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/C3%20populations.sql#L1-L67

For each scenario, calculates the ratio to be applied to the Base population for each scenario to represent infill growth / decreasing populations as calculated from the above processes and updates UST3 with this number
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/D1%20infill%20growth.sql#L1-L75

For each scenario, updates the subcatchment UT5 in each scenario with the headship rates from the forecast.id estimates (sourced from the polygon)
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/D2%20headship%20rates.sql#L1-L58

For each scenario, updates user text 6 with either the number of new lots or a commercial PE dependent upon the land use type for subsequent calculations.
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/D3%20number%20of%20units.sql#L1-L32

Updates user number 6 of greenfield/new development subcatchments with a typical lot size for greenfield areas based upon the projected land use type (infill / potential vs. greenfield).
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/D4%20greenfield%20lot%20size.sql#L1-L36

Sets user numbers and texts where there is no existing data to zero so they are clear for future use – affects greenfield areas.
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/E0%20land%20use%20variables.sql#L1-L89

For each scenario, updates subcatchment user text 4 with the II reduction rates from the catchment-wide assumptions (supplied/created in agreement with WWL, included in Land Use)
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/E1%20II%20reduction.sql#L1-L61

For each scenario, updates subcatchment user text 8 with the water consumption rates from the catchment-wide assumptions (supplied/created in agreement with WWL, included in Land Use)
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/E2%20water%20reduction.sql#L1-L55

For each scenario, updates subcatchment user text 9 with the Deterioration rates from the catchment-wide assumptions (supplied/created in agreement with WWL, included in Land Use)
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/E3%20deterioration.sql#L1-L61

For each scenario, updates subcatchment user text 7 with the density rate  change to be applied, rom the catchment-wide (supplied/created in agreement with WWL, included in Land Use)
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/E4%20density.sql#L1-L60

For each scenario, updates the population estimate, additional foul flow, and trade flow with the relevant multiplier derived from Step D1.
Updates the connectivity %age to reflect reducing water use as per catchment-wide assumptions
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/F1%20existing%20growth.sql#L1-L51

For each scenario, calculates the greenfield population (including baseflow) and contributing area up to the maximum total area.
For each scenario, calculates the commercial PE equivalent into the population field.
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/F2%20new%20sites.sql#L1-L65

For each scenario, updates the runoff characteristics with the catchment-wide assumptions for deterioration and II management (supplied/created in agreement in WWL).
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/F3%20runoff.sql#L1-L38

For each scenario, uses population and area to determine whether a threshold for density change is required, and updates user text 10 with a 1 or 0.
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/F4%20density.sql#L1-L38

For each scenario, updates the runoff characteristics with factor to account for increasing population density, as agreed in the catchment-wide assumptions
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/F5%20runoff%20areas.sql#L1-L32

For each scenario, updates the rain profile such that design storms with climate change allowances are automatically included in the relevant scenario
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/G1%20rain%20gauges.sql#L1-L25

Changes silt depths to a maximum of 10% of the pipe height where it is currently applied. This query should be updated if silt is proposed to be set to zero for all scenarios.
https://github.com/hrlewis1974/ww_modelling_spec/blob/0e0040948871d39c04c70b0d94349ba8c6ac9412/code/H1%20sediment%20depth.sql#L1-L27