# Document Quality Control

These Wastewater Regional Modelling Specifications (the Specifications) have been prepared by Wellington Water Limited (WWL) for use by WWL and its authorised contractors in relation to specified works.

To the maximum extent permitted by law, WWL, its directors, board members, employees, professional advisors and agents do not accept any responsibility or liability, including, without limitation, any liability arising from fault or negligence, for any loss or damage (whether direct or indirect) arising from the use of the Specifications by any unauthorised party.

## Report Status
v11 June 2020 DRAFT for Internal Review

## Originator

Wellington Water Ltd

## Version Control

| Version | Publishing Date | Revision Description | Electronic file location |
| --- | --- | --- | --- |
| 1 | 01/10/2012 | Internal Review |  |
| 2 | 01/01/2013 | Revised Draft for DHI Review | WW_ModellingSpecification_V2.docx |
| 3 | 01/04/2013 | Updated DHI Peer Review Comments | WW_ModellingSpecification_V3.docx |
| 4 | 01/05/2013 | 2nd Peer Review by DHI for Confirmation |  |
| 5 | 01/05/2013 | Final Report |  |
| 6 | 01/05/2013 | Formatting (by communications team) | WW_ModellingSpecification_V6.docx |
| 7 | 01/11/2013 | Included Internal Peer Review Comments | WW_ModellingSpecification_V7.docx |
| 8 | 01/08/2015 | Specification now includes sub sections for ICM and InfoNet applications | WW_ModellingSpecification_V8b.docx |
| 9 | 01/09/2017 | Minor amendments |  |
| 10 | 01/12/2019 | Draft version of document with updated processes for system performance and updates for Standard Drawings |  |
| 11 | 01/06/2020 | Draft for internal review. Extensive editing of document to improve readability. |  |

# Glossary

| Term | Description |
| --- | --- |
| ARI | Annual Recurrance Interval |
| AWI | Antecendent Wetness Index |
| BF | Base Flow |
| DWF | Dry Weather Flow |
| DWLR | Dry Weather Leakage Ratio |
| EOP | Engineered Overflow Point |
| FRC | Fast Response Component |
| GWI | Groundwater Infiltration |
| I/I | Inflow & Infiltration |
| LTS | Long Term Simulation |
| PDWF | Peak Dry Weather Flow |
| PWWF | Peak Wet Weather Flow |
| RDII | Rainfall Dependant Inflow and Infiltration |
| RTC | Real Time Control |
| SCADA | Supervisory Control & Data Acquisition |
| SPA | System Performance Assessment |
| SRC | Slow Response Component |
| WaPUG | Wastewater Planning User Group |
| WW | Wastewater |
| WWF | Wet Weather Flow |
| WWL | Wellington Water Limited |

# Introduction

## Purpose

The purpose of this Wastewater Network Modelling Specification is to ensure a consistent standard of wastewater network modelling across Wellington Water Ltd’s (WWL) client councils. Further this specification standardizes the model asset & time vary data inputs formats to link with WWL WW asset management planning process.

## Scope and Outputs
The below table summarizes the scope of this specification and outlines key study outputs at each phase.

| section | phase | Summary | Consultant Report Output | Consultant Supporting Output |
| --- | --- | --- | --- | --- |
| 2 | Model Extent Definition | Sets out draft model extents and study aims and objectives. | A.1 - Draft Model Extent Definition Memo |  |
| 3 | Data Scoping | Identifies data gaps and prioritises data collection requirements. | A.2 - Data Review Memo | Prioritised data collection requirements |
| 4 | Hydraulic Model Build | Model hydraulic and hydrologic build. | A.3 – Model Build Memo | Model Build ICMT and Flagged asset data sources |
| 5 | Model Calibration, Verification and Validation | Model calibration, verification & validation against observed flow data and historical observations | A.4 – DWF Calibration Memo, A.5 – WWF Calibration Memo and A.6 – Model Build and Calibration Report | DWF Calibration Plots and statistics, WWF Calibration Plots and statistics and Model Calibration ICMT |
| 6 | System Performance Assessment | Assessment of the network performance for various development horizons | B.1 - System Performance Assessment Report | Model SPA ICMT |

## Level of Service
There is no regionally regulated level of service of wastewater network capacity. As such targeted levels of service for wastewater network performance will be advised by Wellington Water as required.

## Model Software
Software platforms to be used for wastewater modelling include:

- Model Build: InfoNet;
- Hydraulic Modelling: ICM.

The version of the software is to be confirmed by WWL.

## Ownership
All models developed and all associated model build data is the asset of each Council within the area covered by Wellington Water. Model management and the updating the model will be the responsibility of Wellington Water.

## Specification General Notes
See below for notes that apply to this specification:

- Any associated documentation that is provided to WWL must not require any specialist software.
- Where the modeller if being unable to comply fully with the specification they should comply with the intent of the specification. If any doubt exists as to the intent of the specification’s clarification should be sought from Wellington Water.
- Any variation to these specification requirements must be confirmed with the Wellington Water project manager in writing.
- Appendices contain additional information useful for modelling. Some of this information is technical guidance useful for hydraulic network system modelling and designs.

## Naming Convention, Model and File Structure
The model features, file and folder naming conventions will be developed in consultation with WWL.

See Appendix A - Folder and Model Database Structure for example of the expected conventions.

# Model Extent and Definition

## Overview

The primary objective of this phase to agree draft model extents with WWL. It is expected that the draft model extents may be incrementally revised in subsequent phases as the study progress and understanding of the catchment improves.

> [!NOTE]
> Output: WWL Review A.1 – Model Extents
> 
> A brief memo (or email if agreed with WWL) detailing the proposed draft model extents shall be prepared and submitted to WWL for review and approval prior to progressing to the next phase. Typically, the memo should detail the following:
> - Catchment service area extents, and identify any alterations to the catchment boundary supplied by WWL;
> - If available locations and types monitoring data within the catchment (including temporary and permanent (SCADA) i.e. rain gauges (temporary, permanent), flow and level data.
> - Identification of all known asset types proposed to be included within model extents and identify network to be excluded. In particular detail pump stations, bifurcations and EOPs other key assets which are within and outside model extents
> - Detail known and reported wastewater network issues;
> - Low points within the network, that may suffer from uncontrolled spills;
> - Identification of key growth areas within the catchment;
> - Provision of a network schematic detailing connectivity and significant network features (pump stations, bifurcations, engineered overflow points, gates etc...).

# Data Scoping

## Overview

The objective of this stage is to review the data available to complete model build and calibration this review should identify gaps and inconsistencies that require resolution either through additional data collection or the application of engineering judgement.

Output from this phase will be a brief data scoping memo detailing findings, activities and prioritized data collection requirements.

## Input Data

Appendix B - Data Collection Checklist summarises the potential data collection requirements, note this table is not a comprehensive list of all available data sources but is provided as a guide to assist in development of data requirements.

## Asset Data

### Asset Data Review

Review of the collected asset data provided by WWL to assess its suitability for the modelling exercise. Carry out the following checks with this data:

* Identification of missing attribute data;
* Long sections for all branches should be checked for inconsistencies;
* Identification of conflicting data sources, & hierarchy of data sources to resolve conflicts;
* Identification of suspect data, for example:
  * Identification of negative pipe gradients;
  * Reducing pipe diameters in downstream direction;
  * pipe invert step up in the downstream direction
  * Steep pipes (>10% slope);
  * Non-matching pipe soffits;
  * Identification of locations where pipe invert doesn’t correspond to manhole invert level (i. e. pipe IL being below manhole IL etc.)
* Confirmation of network connectivity.
* Missing, inconsistent, ambiguous data relating to pump stations, constructed overflows or any other ancillaries that are to be included in the model
* Identification of flow directions

### Asset Data – Data Collection

Following review of asset data, a prioritized list (plus figures showing locations) of data collection requirements should be generated and agreed with WWL. The following priority survey subdivision is suggested:

* High – Critical to model confidence i.e. overflow details, pump station data etc.
* Medium – Important to model confidence, but can be estimated based on engineering judgement e.g. Manhole inverts which can be interpolated based on upstream and downstream inverts;
* Low – Non-critical to model confidence e.g. Manhole lid levels than can be interpolated with some confidence from LiDAR records (not uncontrolled overflow locations).

Where possible, missing or inconsistent asset data shall be filled using engineering judgement during the model build phase.

## Catchment Data Review

Review of the collected catchment data provided by WWL to assess its suitability for the modelling exercise. Specifically identify:

* Properties with missing water consumption data;
* Specific developments such as schools, hospitals, large developments which may require additional data collection requirements;
* High water users and trade waste discharges.
* A flow volume comparison tables (based on flow monitor and water meter records) should be prepared and reported to Wellington Water, including any issues that may be considered to adversely affect the model calibration process or standard.
* Flow gauge catchments should be defined and reported on as leaf or subtract, as results from calibration of subtract gauges is inherently less reliable than for leaf gauges

## Operational Data Review
Review of the collected operational data provided by WWL to assess its suitability for the modelling exercise. Specifically identify:

* Reported wet weather and dry weather overflows;
* Supervisory Control & Data Acquisition (SCADA) recorded overflows and frequency of operation for the last 5 years apply the event definition criteria from section 6.6.4;
* SCADA recorded ancillary structure (e.g. pump stations, storage tank etc) operation for the last 5 years.
* Ancillary structure operational records including set points, manual interventions etc…
* Real Time Control routines

## Temporary Flow, Depth and Rainfall Review
Review of the collected gauge data provided by WWL to assess its suitability for the modelling exercise. Specifically:

* Prior to model build review the flow monitoring contractor’s Installation and Data Reports must be reviewed to identify issues that may adversely affect the model calibration / verification process.
* Analyse the flow and rainfall data captured for the suitability of use in the calibration of the model.
* Verify the extent and adequacy of dry weather data captured to enable the DWF flow analysis as described in Section 5.1 of this specification;
* Analyse the data captured during wet weather events so as to develop a set of rainfall event and DWF periods proposed to be included for the calibration and verification. These events and periods should meet the criteria set out in Section 5.4.1 and agreed with WWL.
* Develop a second set of events upon which the model verification is to be based. Ideally meeting the above wet weather criteria.
* Determine average recurrence intervals (based on rainfall intensity) of each rain event proposed for use in the model calibration and verification processes. ARI to be developed from nearest permanent rainfall record;
* Complete event analysis of monitored EOP performance apply the event definition criteria from section 6.6.4;
* Review gauged DWF return to sewer values and where available compare to water consumption records;
* Review mass balance between gauging sites.
* Refer to monitoring specification: Regional Gauging Specification WWL, 2013) for details on the gauging data capture process.

> [!NOTE]
> Output: WWL Review A.2 – Data Review Memo
> 
> Output from this stage will be a short memo which details the activities undertaken, findings and recommendations developed during the data review. It should contain the following:
> * Description of data gathered including review comments and decisions;
>   * Data collection request plan (High: Red; Medium: Purple; Low: Yellow)
> * Determination of data gaps or data inconsistencies;
>   * Discussion on the quality and coverage of the gauge data and identification of areas where possible issues may arise during calibration
> * Recommendations for additional work for obtaining missing data;
>   * A statement assessing the expected level of confidence in the model outputs and identify the associated potential limitations to model application
Recommended updates to GIS or other data management software (eg: InfoNet)
> * Summary of operational issues identified in the network;
> * Gauge Summary
>   * Flow gauge catchment details and schematic diagram
>   * Flow data summary including selected events for DWF calibration / verification, WWF calibration/ verification
>   * Rainfall data summary indicating the ARI values for each event, total rainfall depth and maximum rainfall intensity for each event. Also indicate whether collected data are suitable for use in the model calibration and verification process.
>   * Indicate whether PWWF/PDWF criterion is met for selected event
>   * Gauged spills statistics – frequency, duration.
>   * Provide a summary tables of daily average observed wastewater flow volumes and average volume of water usage meter records for each gauge catchment for dry weather period

# Hydraulic Model Build

## General

This specification is developed to provide minimum requirements to follow during model build process, system assessment stages, option developments and improvement works plans preparation. 

A good understanding of the following aspects is expected from the modeller during the model building work:

* hydraulics of flow in sewers and sewer ancillary structures
* urban hydrology
* the assumptions implicit in the way the software carries out the calculations
* methods of measurement of flow in sewers and their accuracy
* concepts of appropriate engineering solutions to mitigate wastewater network issues

Consider all requirements contained in this specification as minimum requirements. Where it is identified that further work may produce an enhanced result, in such situations written prior approval should be obtained from Wellington Water.

Carry out a site visit prior to commencement of the modelling project to familiarise the modelling team with catchment topography, wastewater system features, land use etc.

## Data Flags

The WWL standard user flag system must be used. This will allow users to identify the data sources and changes (see Appendix C - Data Flags for a description of each of the flags and their use). Data sources and all assumptions should be clearly documented in the Model Build Report.

The model build data tagging information shall become the metadata which will be prepared in a spread sheet and accompany the model upon delivery.

The model build data shall include the minimum following attributes:

* Nodes:  invert levels, ground levels, diameter, storage table, energy loss, cover type;
* Links: gravity or pressure main, diameter, width/height, cross-section, roughness material, upstream and downstream invert levels;
* Sub-catchments: pervious/impervious area, parameter values
* Ancillary Structures: invert levels, width, cross-section, passive flow regulations;

Possible sources could include council GIS, survey, derived from other data, e.g.

LiDAR contours or raster grid, derived from interpolation, extrapolation, assumption, parameter values assigned from literature, modelling specifications etc.

## WWL Modelling Data Standards

Final model asset data following completion of the model build is to be provided to WWL in accordance with WWL Modelling Data Standards format (refer Modelling Data Standards Report, WWL, June 2019).

##	Hydraulic Model Build

###	Nodes

Model nodes can be classed into two categories: - standard manholes/chambers and dummy nodes. Dummy nodes are utilized to maintain consistency with the GIS e.g. representation of the GIS ‘Nodal Changes’ features.

Manholes should as default be represented with flood type of lost, however care should be taken to identify manhole lids that have been strapped / sealed in which case the flood type should be set as sealed. This manhole locations should be clearly documented to WWL.

Dummy nodes should as default be represented with flood type of sealed, with the manhole ground level set to match the highest connecting pipe soffit. Manhole chamber dimensions should match the largest contributing pipe diameter.

### Un-modelled Storage

Wastewater reticulation upstream of the model extents may be represented within the model at loading nodes. This un-modelled storage should include network with invert levels lower than the lid level of the loading node.

The use of un-modelled storage may not be necessary in detailed or catchment models where the practice generally is to have most of the wastewater pipe network and manholes included in the model.

If any model simplification has been undertaken, manholes are removed from the modelled network. The missing pipes, manholes and connection pipes, provide a storage volume (when the network is surcharged) and can be represented using an inference tool within ICM. Background guidance can be found on this in the WaPUG User Note 15 “Storage Compensation”.

### Conduits

Model conduits can be classed into three categories:

* gravity mains,
* siphons and
* rising mains

Rising mains in general are not required to be explicitly modelled, an exception to this are shared rising mains which should in general be explicitly modelled. However, the adopted approach for representing rising mains is to be agreed with WWL.

The section (below) summarizes the specified conduit default hydraulic model parameters. It is expected that these default values will not apply to all locations and engineering judgment will be required to develop representative hydraulic parameters.

In addition, during hydraulic calibration, these parameters may require alteration to represent gauged hydraulic performance. Deviation from the agreed default values will need to be supported by documentation and a justification for the change.

#### Conduit – Asset Data

The long section pipe data will be extracted from the InfoNet asset database.

* A review of all long sections will be undertaken to ensure that all missing data was populated by either interpolation or engineering assumptions where interpolation was not possible.
* Pipe dimensions such as shape, width and height must be checked against available information such as as-built drawings, models and other GIS datasets.
* Match US soffit to DS soffit unless confirmed otherwise by Asset Data. In the case of steep gradients with suspected drop structures, adopt upstream pipe gradient to estimate downstream invert.
* Conduit alignments may need to be corrected (from GIS) to follow their true course to represent pipe lengths reliably and improve visual representation.
* Pipe Length: The minimum conduit length shall be set to 5m.

#### Conduit – Sediments and Obstructions

Sediments usually collect in slow flowing parts of the network, typically inverted siphons and large flat pipes where there is direct inflow upstream.  Sewer sections most prone to sediment build up and the model approach followed to represent these local issues will need to be documented. Silt depths present in the model will need to supported by documentation such as a CCTV or manhole survey. It is recommended that localized blockages and obstructions are represented using an appropriately size orifice rather than applying silt along the whole length of pipe.

Root intrusion may be represented with an orifice and a silt depth.

#### Conduit – Roughness

Pipe roughness is linked to pipe material, its current condition (e.g. age, wear, slime) and the presence of obstructions such as sediment, roots or grease.  Pipe roughness values may be derived from analysis of the data provided by flow survey, CCTV surveys and locations where silt collects.

Pipe roughness should be initially set to Colebrook-White and initially set as 1.5mm  . This value is typical of older sewers. This can then be updated according to “page 40 Tables for Hydraulic Design of Pipes, Sewers and Channels” (HR Wallingford, 1994), extract saved Appendix D - Conduit Roughness.

#### Conduit - Head Loss Coefficients

Headloss coefficients are calculated on the angle of approach of the incoming and outgoing pipes to each node in the model and should initially be calculated using the Infoworks Inference tool. These initial coefficients should be checked:

* To ensure that the headloss coefficients have been applied correctly. High values should be checked first and some manual adjustment may be required, particularly at side branches that join a main branch at an acute angle.
* To identify steep pipes within the model where headloss will have a major impact on upstream water levels. If these areas are near overflows or flooding problem areas then it may be necessary to undertake further investigations into the hydraulic performance of these structures.

#### Conduit - Preissmann Slot

The ICM hydraulic engine applies a Preissmann Slot is a conceptual vertical and narrow slot providing a conceptual free surface condition for the flow when the water level is above the top of a closed conduit. Care with the default application of the Preissman Slot should be taken for large diameter sewers which are highly surcharged, in these instances the Preissman Slot width may require adjustment to mitigate against excess artificial storage volume being introduced in the model.

### Engineered Overflow Points (EOP) and Bifurcations

An Engineered Overflow Point (EOP) is defined as a chamber which has more than one outgoing pipe removing flow from the network and discharging to the environment. A bifurcation on the other hand is defined as a chamber with more than one outgoing pipe where flow is diverted to another part of the wastewater network.

The following asset information is required for the modelling of overflows and bifurcations:

* Invert level of high-level pipe (or weir)
* Size of high-level pipe (or length of weir)
* Size and invert levels of the overflow pipe to its discharge location
* Type of overflow
* Chamber size and layout

If the overflow discharges to the sea or a river, any potential influence on the network must be examined and the performance of the overflow considered.

The modeler will assume that the flow in the overflow chamber is subcritical and that the depth is therefore controlled by the continuation pipe. When modelling an overflow in ICM the following changes should be undertaken:

* If a weir is fitted before the overflow pipe an additional weir link must be created.
* The weir link will be connected to the outfall pipe by a dummy node. Flood type for this dummy node should be sealed and chamber / shaft areas set to the minimum.
* The continuation pipe following the weir should be modelled as an orifice and connected to a dummy node.
* The pipe immediately downstream of the overflow will also be modelled as an orifice so that headlosses can be adequately modelled.

For a high-level pipe overflow, the spill pipe will be modelled as an orifice.

### Orifices (Throttle pipe)

Flow rates through an orifice will depend on the following:

* Inlet design: cross sectional area of flow in the chamber
* Length
* Diameter: cross sectional area of flow in the downstream pipe
* Hydraulic gradient

The modeller must specify the following parameters:

* Invert level of the orifice.
* Orifice diameter. For non-circular pipes the opening diameter should be based on a circle of equivalent area.
* Discharge coefficient:
  * For a free discharging orifice, the discharge coefficient should be set to the default value of 0.85.
  * For a drowned orifice, the discharge coefficient will range from 0.85 to 2.0.
  * Discharge coefficients can be increased for small chambers (+30%), benching (+15%)
* The secondary discharge coefficient should be set to 0.55 (for inline) and 0.5 for (non-inline).
* The limiting discharge field should be set to 0.
* Further guidance regarding the Orifice Equation can be found in the WaPUG User Note 2 ‘Modelling Ancillaries: Orifice Equations’.

### Weirs

Asset data such as invert level, weir length and a coefficient of discharge must be set by the modeler. Weir coefficients are influenced by a number of factors:

* Weir: crest configuration; orientation (transverse of side weir); height above chamber invert.
* Size of chamber (this will affect approach velocity).
* Presence of screens and or ragging.

Guidance for the input of weir coefficient data is suggested:

* Coefficients:
  * For transverse weirs with no screens will range between 0.6 and 0.85 (assume the higher end as a default value);
  * For high side weirs with no screens will typically range between 0.5 and 0.75 (assume a default value of 0.55);
  * Scumboards normally reduce the coefficient by about 10%.
* Weir levels: Will be modelled at their correct level.
* Checks to be made include: Outlet pipe for high heads due to steep pipes conditions; Restrictions on outlet pipe such as silt / debris.
* Calibration of the weir coefficient may be necessary during calibration if sufficient data on operational performance allows.
* Low Side Weirs:
  * Supercritical flows often occur in low side weir chambers.
  * The flow patterns are complicated and usually required the geometry of the chamber to be modelled.
  * Guidance on how best to model low side weirs can be found in WaPUG User Note 14 ‘Modelling Low Side Weirs’.
* Leaping Weirs: When the discharge is small, the combined flow directly falls in the the intercepting sewer but in cases of excess flow, all / part of the storm flow leaps across the opening and is thuse, diverted from the intercepting sewer. The excess storm water is usually carried to a nearby watercourse.
  * The vertical pipe will need to be modelled as an orifice
  * The invert of the orifice will need to be set so that the midpoint opening is at the invert of the spill pipe.
  * The default value of 0.85 should be used for the orifices discharge coefficient.

### Pump Stations

Generally, there are four types of pump stations that can be modeled: trunk, local, return pump (from offline storage) and private. Asset data to be collected when modelling a pump station will include the following:

* Pump characteristics:
  * pump type
  * number of pumps
  * start / stop levels
  * nominal capacity
  * pump curve / head-discharge relationship
  * arrangement (duty-standby or duty-assist)
* Wet well dimensions
* Rising main details
* Emergency overflow details

A drop test survey should be undertaken to confirm the above parameters and update any missing asset data.

Guidance for the input of pump station data is as follows:

* Duty-standby pump arrangements can be modelled as a single pump.
* If the model is large and complex, some of the pumps can be changed to ‘screw pumps’, however this will need to be agreed with WWL. These changes should not be necessary during model calibration or system performance assessments.
* Real time control may initially be collected from previous modeling / pump station reports. However, the operation will need to be confirmed with the operations staff.

### Storage Tanks
Storage tanks can be modelled as large chambers (or storage node), in-line or off-line pipes. The modeler should be aware:

* Of the tank operational routines in particular how the tank is filled and drained.
* That during initialisation, the tank will fill up to the level of the lowest outgoing link. The modeller may be required to drain the tank by adding a dummy closed gate to a dummy node at tank floor invert level.

### Siphons

An inverted siphon is a depressed sewer that drops below the hydraulic gradient. The pipe is usually surcharged and includes an inlet chamber, a collection of depressed pipes and an outlet chamber. It is desirable for the velocity in the depressed pipes to be above 1.5 m/s to avoid sedimentation (ideally about 3 m/s).

Guidance on modelling siphons can be found in WaPUG User Note 19 ‘Modelling of Inverted Siphons in Taunton’.

### Operational Rules

If the network is actively operated under different operational rules and strategies those will be specified in the project scope, those should be modelled using RTC (Real time Control) functions in the software.

## Hydrological Model Build

### Catchment Demarcation

For the purposes of calibration of the hydrologic model, sub catchments should generally be demarcated with the following criteria:

* Be in the size range of 2-5Ha (note this catchment size is subject to the purpose of the model and the adopted resolution should be confirmed with WWL). Further refinement maybe required for areas with high density development.
* Follow property boundaries and road centrelines, and exclude large reserves and other undeveloped land such as school grounds where wastewater pipes are not present or minimal.
* Subcatchments should initially be based on district plan land uses, such as: residential, commercial, industrial, specific developments etc.
* During model build, land-uses may be further refined according to other land uses such as: housing density / affluence, warehouses, offices, factories, etc.
* Private drainage records should be obtained where the land use is special, such as: hospitals, airports, retail parks, industrial sites. Drainage records will help to identify where the flows enter the sewer system.
* Where applicable new catchment extents shall be developed to cover the future service area outside the existing area of service, loading node locations, DWF and runoff parameters will be developed in conjunction with discussions with WWL staff.
* For each sub catchment a loading node within the model extents should be defined, this node should generally be located within the lower third of the catchment. Simulated dry and wet weather flows will be loaded to this node.

### Land Use data

The consultant must define contributing areas and set appropriate land uses within the model. For the purposes of development DWF inflows, each sub-catchment should be classified into development units which represent differing district plan land use.

### Initial Catchment Hydrological Parameters

Sub catchment runoff parameters:

* Catchment slope: average slope calculated from DEM analysis
* Soil class: Based on LENZ 4
* Dimension: Square root of the area
* Rainfall profiles: Based on closest rain gauge

## DWF Model Build

There are four main sources of inflow to a wastewater network during dry weather flow periods:

* Population derived flows
* Commercial flows
* Trade flows and
* Baseflow

When developing the dry weather flow inputs to the model, they will need to be created in the same order as above.

The theoretical DWF is given by the formula below: DWF=PG+C+BF+E

Where: 
P = Population; 
G = average wastewater contributing (L/hd/day); 
C = Commercial wastewater (L/floor area/day); 
BF = Baseflow (L/day), 
E = industrial effluent (L/day)

See Appendix E for typical DWF contributions, application of DWF contribution rates should be agreed with WWL.

### Residential Loads

#### Population

Population (P) should be applied to the model by applying a headship rate to residential property parcel. This headship rate will be based on the latest Census meshblock usually resident populations.

Where seasonal population changes exists, these should be included in the model using the monthly multiplier.

#### Water Consumption

Water consumption (G) for calibration of models has been taken from the “Wellington City Hydraulic Model Demand (March 2010) v1” report. A consistent figure of 250 L/head/day will be applied across the catchment being modelled unless there is clear evidence of variability, from reliable flow survey data.

#### Applying Residential DWF Loads

Once the subcatchments have been updated with residential population figures, the water consumption (G) and diurnal variation of the flow will need to be set up in the ‘wastewater generator’ feature. The model will then generate the flow on an hourly basis by multiplying the population by the consumption rate. The initial generic diurnal profile(s) to be used are provided in Appendix E and can be refined during model calibration against observed data where available.

#### Applying Commercial DWF Loads

If a commercial flow is less than 1 L/s (average flow), then the total can be combined for each subcatchment. The initial generic diurnal commercial profile(s) to be used are provided in Appendix F and can be refined during model calibration against observed data where available.

#### Applying Trade Waste DWF Flows

Trade Flows are to be treated as individual inputs to the model and developed from WWL Trade Waste database. They are to be allocated as individual catchments (with no area).  If the allocation node does not exist, then the modeller can create a dummy node (otherwise the next downstream node may be used).

A trade waste group is to be set-up and a profile entered for each trade flow. As in the previous section, the various trade waste inflows will need to show a diurnal variation. Variability in trade flow can be affected by:

* Shift work
* Differences in process

The initial generic diurnal commercial profile(s) to be used are provided in Appendix E and can be refined during model calibration against observed data where available.

## Base Flow Setup

For design horizon models four separate baseflow values will need to be considered:

| Infiltration Period | Period | No. Of months | Use | Comments |
| --- | --- | --- | --- | --- |
| Summer | November to April | 6 | Bathing water spill frequency |  |
| Winter | May to July | 3 | Overflow frequency |  |
| Spring | August to October | 3 | Overflow frequency | Where catchment peak groundwater conditions in spring |
| Annual | Full Year | 12 |  | If there is no significant difference between summer and winter infiltration, an annual infiltration figure can be used. |

The methodology for estimating seasonal variation in base flow will be as follows:

* Obtain (up to 3 years) of flow data from WWL for monitored SCADA points within the catchment (e.g. WwTW inlet and pump stations)
* Obtain rainfall data for the same period
* Assess dry weather flows
  * Remove all flows for wet days (greater than 2mm depth in 24 hrs)
  * Remove flows for two days following the event. This period could be longer if the catchment suffers from excessive groundwater infiltration
  * With the remaining data, calculate:
    * Dry day flow or
    * Minimum night-flow
    * Average annual infiltration (summer, winter and spring)
    * Compare infiltration figures with modelled assumptions
    * Amend modelled infiltration values in accordance with annual observations

> [!NOTE]
> Output: WWL Model Build Review
> 
> Following completion of Hydraulic and Hydrological Model build the consultant shall submit a memo describing the following:
> 
> * Activities undertaken to complete the model build
> * Summaries of model features and catchments characteristics
> * Metadata utilized of all model data sources
> * Any recommendations regarding further investigation or data capture
> * Limitations and assumptions associated with the model build
> * Sub Catchment Extents and Characterisation: Following completion of sub-catchment demarcation and characterisation, a plan shall be provided to WWL indicating sub-catchment extents. In addition, tables summarising the catchment characteristics
> * Model Build Cards for all ancillary structures: Pump Stations, Engineered Overflow Points, storage tanks, bifurcations, grit chambers, penstocks, other if applicable
> * Model Network: Transportable database
> 
> The network description within the model should list the following information:
> 
> * Date and purpose of model build
> * Previous version of model (if applicable) i.e. which previous model was used as base model
> * Title of model build and verification documents
> * Name of consultant and project manager
> * Name of WWL contact responsible for project
> 
> Upon Completion of Model Build, WWL will undertake a review of the model, refer to Appendix G for potential model review checklist.

## 5.1 Prerequisites

Ensure the completion of the following components of work prior to commencement of Model Calibration for any project.

* A flow and rainfall monitoring program carried out in accordance with the requirements of the WWL Flow Monitoring specification.
* Auditing of finalised flow and rainfall data captured in this program in accordance with the WWL Flow Monitoring Auditing Specification.
* Auditing of catchment model build.

## 5.2 Dry Weather Flow Calibration

To simulate the generated DWF, the following steps shall be undertaken:

* Identification of dry days;
* Generation of diurnal profiles;
* Distribution of DWF loadings;
* Assessment of variation of DWF for seasons, public holidays and specific events.

### 5.2.1 Dry Day Identification

A minimum of 7 dry weather days (Selection of dry days is dependent on availability within the gauging period.) from the gauging period will be selected, which will include at least 5 Weekdays, 1 Saturday and 1 Sunday. 

Initially dry days will be identified where the Antecedent Wetness Index (As defined in the NZWWA Inflow and Infiltration Control Handbook (NZWWA, 1996)) and rainfall are less than 2 – 3 mm at least 2 days prior to the day of interest. 

These dry days will be verified by inspection of the recorded hydrograph to confirm that any inflow and infiltration (I/I) influence (from rainfall, groundwater or tidal inflow) is minimal.

### 5.2.2 Diurnal Profile Generation

This activity involves the development of an average hourly Repetitive Diurnal Profile from the selected dry days to simulate DWF during weekdays, Saturdays and Sundays. The diurnal profile shape can be developed from a number of sources including gauge records, individually logged water supply meters (for larger users), trade waste records and synthetic profiles (sourced from the available literature). These shall be applied on a development unit basis dependent on land use, adopted diurnal profiles and associated assumptions will be detailed and discussed with WWL staff.

DWF base flow should be estimated and separated out that from rain dependent flow. Base flow is represented by two components (Rainfall Dependant (RD) and Non RD), the base flow (Non RD) that is set up during DWF calibration may need to be reduced during wet weather calibration to allow for base flow (RD) that will be generated by the RDI module.

Determine constant component of base flow or permanent infiltration from the monitored data for the nominated period of dry weather.

Average overnight dry base flow determined by analysis of the flow data for that particular catchment, typically around 2am.

Assume 90% (generally 10% of night flow is residual flow) of this value as base flow infiltration.

Adjustments to the initially adopted repetitive profile may be necessary to achieve required calibration tolerances. The adopted calibration baseflow may required to be adjusted to represent seasonal changes as described in Section 4.9.

### 5.2.3 Distribution of DWF Loadings

DWF loads will be distributed within the sub-catchment development units (of a given flow gauge catchment, see the above Hydrological Model Build section for details) based on water consumption records (dependent on the availability and quality), in the event that water consumption is not available, residential DWF loads can distributed based on residential population estimates.

DWF loading rates will be developed as a minimum for Weekdays, Saturdays and Sundays.

Use the following process to define DWF loading parameters.

* Define population, contributing area and connection node for each catchment
* Determine water consumption rate from the billing records (if available) and introduce as dry weather flow boundary conditions for each individual sub-catchment or group of sub-catchments, as appropriate, and also select appropriate flow patterns.
* Determine trade flows from the trade waste database (where available).
* Introduce derived repetitive profiles (dimensionless) for weekdays and weekends as model parameters through the repetitive profile editor. Define weekly flow patterns as a combination of weekday and weekend repetitive profiles and associated calendar definitions.
* Distribute the total base flow, pro-rata to each sub-catchment area within the gauge catchment area and introduce as base flow, following the same technique as for wastewater.
* Similarly, introduce trade flows as and select related flow pattern where necessary/required.
* If additional flow is identified (neither trade flow nor population generated flow) introduce them as specific flow in boundary specification.
* Large DWF inputs may require inclusion explicitly such as schools, hospitals etc.. These locations should be identified and the DWF modelling approached agreed with WWL.

### 5.2.4 DWF Assessment

Simulation of the average dry weather flow pattern for a continuous period of at least 7 days, including weekdays and weekend days.

Comparison of the modelled discharge at each monitoring site with that from the DWF pattern over a period of at least 7-days, including both weekdays and weekends.

Adjustments to the repetitive profile and water quantity (scaling factor <1) as necessary to catchment allocations and connectivity, to achieve a calibration fit over the 7 day minimum simulation period.

| Parameter | Tolerances |
| --- | --- |
| Peak Flow | -1 |
| Peak Timing | ±0.5hr |
| Peak Depth | ±20% |
| Shape | R2 ≥ 0.7 of observed flow pattern |

WWL understands that judgement needs to be applied to these limits and exceptions to these tolerances will need to be discussed and agreed on a case by case basis if required. The reasons for non-compliance should be assessed and reported, including the potential impacts of the discrepancies and purpose of the model.

### 5.2.6 DWF Verification

If available, the DWF calibration shall be compared with:

* Another dry weather flow period – sourced from the current flow survey

> [!WARNING]
> WWL Review A.4 - DWF Calibration
> 
> The calibration review is to be held at the completion of the flow calibration phase. It is anticipated that this will involve the review of DWF calibration plots for each gauge. The DWF Calibration portion of the Model Build and Calibration report should be in draft form, and issues arising for calibrations of any gauge should be raised and discussed at this review. Steps to mitigate or correct any discrepancies that may arise should be agreed with WWL during this review and documented in the finalised report.
> The DWF plots and a draft version of the DWF section of the calibration report will be submitted to WWL for review. The final report will identify any monitors that could not be matched to the stated criteria and discuss what steps have been taken compensate or correct issues found.

## 5.4 Wet Weather Flow Calibration

Calibrate the hydrological model for each of the nominated and agreed wet weather calibration events using a continuous simulation commencing at least two months prior to the commencement of the flow monitoring period and concluding at the end of the flow monitoring period.