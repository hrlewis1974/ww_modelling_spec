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

# 1 Introduction

## 1.1 Purpose

The purpose of this Wastewater Network Modelling Specification is to ensure a consistent standard of wastewater network modelling across Wellington Water Ltd’s (WWL) client councils. Further this specification standardizes the model asset & time vary data inputs formats to link with WWL WW asset management planning process.

## 1.2 Scope and Outputs
The below table summarizes the scope of this specification and outlines key study outputs at each phase.

| section | phase | Summary | Consultant Report Output | Consultant Supporting Output |
| --- | --- | --- | --- | --- |
| 2 | Model Extent Definition | Sets out draft model extents and study aims and objectives. | A.1 - Draft Model Extent Definition Memo |  |
| 3 | Data Scoping | Identifies data gaps and prioritises data collection requirements. | A.2 - Data Review Memo | Prioritised data collection requirements |
| 4 | Hydraulic Model Build | Model hydraulic and hydrologic build. | A.3 – Model Build Memo | Model Build ICMT and Flagged asset data sources |
| 5 | Model Calibration, Verification and Validation | Model calibration, verification & validation against observed flow data and historical observations | A.4 – DWF Calibration Memo, A.5 – WWF Calibration Memo and A.6 – Model Build and Calibration Report | DWF Calibration Plots and statistics, WWF Calibration Plots and statistics and Model Calibration ICMT |
| 6 | System Performance Assessment | Assessment of the network performance for various development horizons | B.1 - System Performance Assessment Report | Model SPA ICMT |

## 1.3 Level of Service
There is no regionally regulated level of service of wastewater network capacity. As such targeted levels of service for wastewater network performance will be advised by Wellington Water as required.

## 1.4 Model Software
Software platforms to be used for wastewater modelling include:

- Model Build: InfoNet;
- Hydraulic Modelling: ICM.

The version of the software is to be confirmed by WWL.

## 1.5 Ownership
All models developed and all associated model build data is the asset of each Council within the area covered by Wellington Water. Model management and the updating the model will be the responsibility of Wellington Water.

## 1.6 Specification General Notes
See below for notes that apply to this specification:

- Any associated documentation that is provided to WWL must not require any specialist software.
- Where the modeller if being unable to comply fully with the specification they should comply with the intent of the specification. If any doubt exists as to the intent of the specification’s clarification should be sought from Wellington Water.
- Any variation to these specification requirements must be confirmed with the Wellington Water project manager in writing.
- Appendices contain additional information useful for modelling. Some of this information is technical guidance useful for hydraulic network system modelling and designs.

## 1.7 Naming Convention, Model and File Structure
The model features, file and folder naming conventions will be developed in consultation with WWL.

See Appendix A - Folder and Model Database Structure for example of the expected conventions.

# 2 Model Extent and Definition

## 2.1 Overview

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

# 3 Data Scoping

## 3.1 Overview

The objective of this stage is to review the data available to complete model build and calibration this review should identify gaps and inconsistencies that require resolution either through additional data collection or the application of engineering judgement.

Output from this phase will be a brief data scoping memo detailing findings, activities and prioritized data collection requirements.

## 3.2 Input Data

Appendix B - Data Collection Checklist summarises the potential data collection requirements, note this table is not a comprehensive list of all available data sources but is provided as a guide to assist in development of data requirements.

## 3.3 Asset Data

### 3.3.1 Asset Data Review

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

### 3.3.2 Asset Data – Data Collection

Following review of asset data, a prioritized list (plus figures showing locations) of data collection requirements should be generated and agreed with WWL. The following priority survey subdivision is suggested:

* High – Critical to model confidence i.e. overflow details, pump station data etc.
* Medium – Important to model confidence, but can be estimated based on engineering judgement e.g. Manhole inverts which can be interpolated based on upstream and downstream inverts;
* Low – Non-critical to model confidence e.g. Manhole lid levels than can be interpolated with some confidence from LiDAR records (not uncontrolled overflow locations).

Where possible, missing or inconsistent asset data shall be filled using engineering judgement during the model build phase.

## 3.4 Catchment Data Review

Review of the collected catchment data provided by WWL to assess its suitability for the modelling exercise. Specifically identify:

* Properties with missing water consumption data;
* Specific developments such as schools, hospitals, large developments which may require additional data collection requirements;
* High water users and trade waste discharges.
* A flow volume comparison tables (based on flow monitor and water meter records) should be prepared and reported to Wellington Water, including any issues that may be considered to adversely affect the model calibration process or standard.
* Flow gauge catchments should be defined and reported on as leaf or subtract, as results from calibration of subtract gauges is inherently less reliable than for leaf gauges

## 3.5 Operational Data Review
Review of the collected operational data provided by WWL to assess its suitability for the modelling exercise. Specifically identify:

* Reported wet weather and dry weather overflows;
* Supervisory Control & Data Acquisition (SCADA) recorded overflows and frequency of operation for the last 5 years apply the event definition criteria from section 6.6.4;
* SCADA recorded ancillary structure (e.g. pump stations, storage tank etc) operation for the last 5 years.
* Ancillary structure operational records including set points, manual interventions etc…
* Real Time Control routines

## 3.6 Temporary Flow, Depth and Rainfall Review
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

# 4 Hydraulic Model Build

## 4.1 General

This specification is developed to provide minimum requirements to follow during model build process, system assessment stages, option developments and improvement works plans preparation. 

A good understanding of the following aspects is expected from the modeller during the model building work:

* hydraulics of flow in sewers and sewer ancillary structures
* urban hydrology
* the assumptions implicit in the way the software carries out the calculations
* methods of measurement of flow in sewers and their accuracy
* concepts of appropriate engineering solutions to mitigate wastewater network issues

Consider all requirements contained in this specification as minimum requirements. Where it is identified that further work may produce an enhanced result, in such situations written prior approval should be obtained from Wellington Water.

Carry out a site visit prior to commencement of the modelling project to familiarise the modelling team with catchment topography, wastewater system features, land use etc.

## 4.2 Data Flags

The WWL standard user flag system must be used. This will allow users to identify the data sources and changes (see Appendix C - Data Flags for a description of each of the flags and their use). Data sources and all assumptions should be clearly documented in the Model Build Report.

The model build data tagging information shall become the metadata which will be prepared in a spread sheet and accompany the model upon delivery.

The model build data shall include the minimum following attributes:

* Nodes:  invert levels, ground levels, diameter, storage table, energy loss, cover type;
* Links: gravity or pressure main, diameter, width/height, cross-section, roughness material, upstream and downstream invert levels;
* Sub-catchments: pervious/impervious area, parameter values
* Ancillary Structures: invert levels, width, cross-section, passive flow regulations;

Possible sources could include council GIS, survey, derived from other data, e.g.

LiDAR contours or raster grid, derived from interpolation, extrapolation, assumption, parameter values assigned from literature, modelling specifications etc.

## 4.3 WWL Modelling Data Standards

Final model asset data following completion of the model build is to be provided to WWL in accordance with WWL Modelling Data Standards format (refer Modelling Data Standards Report, WWL, June 2019).

##	4.4 Hydraulic Model Build

###	4.4.1 Nodes

Model nodes can be classed into two categories: - standard manholes/chambers and dummy nodes. Dummy nodes are utilized to maintain consistency with the GIS e.g. representation of the GIS ‘Nodal Changes’ features.

Manholes should as default be represented with flood type of lost, however care should be taken to identify manhole lids that have been strapped / sealed in which case the flood type should be set as sealed. This manhole locations should be clearly documented to WWL.

Dummy nodes should as default be represented with flood type of sealed, with the manhole ground level set to match the highest connecting pipe soffit. Manhole chamber dimensions should match the largest contributing pipe diameter.

### 4.4.2 Un-modelled Storage

Wastewater reticulation upstream of the model extents may be represented within the model at loading nodes. This un-modelled storage should include network with invert levels lower than the lid level of the loading node.

The use of un-modelled storage may not be necessary in detailed or catchment models where the practice generally is to have most of the wastewater pipe network and manholes included in the model.

If any model simplification has been undertaken, manholes are removed from the modelled network. The missing pipes, manholes and connection pipes, provide a storage volume (when the network is surcharged) and can be represented using an inference tool within ICM. Background guidance can be found on this in the WaPUG User Note 15 “Storage Compensation”.

### 4.4.3 Conduits

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

### 4.4.4 Engineered Overflow Points (EOP) and Bifurcations

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

### 4.4.5 Orifices (Throttle pipe)

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

### 4.4.6 Weirs

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

### 4.4.7 Pump Stations

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

### 4.4.8 Storage Tanks
Storage tanks can be modelled as large chambers (or storage node), in-line or off-line pipes. The modeler should be aware:

* Of the tank operational routines in particular how the tank is filled and drained.
* That during initialisation, the tank will fill up to the level of the lowest outgoing link. The modeller may be required to drain the tank by adding a dummy closed gate to a dummy node at tank floor invert level.

### 4.4.9 Siphons

An inverted siphon is a depressed sewer that drops below the hydraulic gradient. The pipe is usually surcharged and includes an inlet chamber, a collection of depressed pipes and an outlet chamber. It is desirable for the velocity in the depressed pipes to be above 1.5 m/s to avoid sedimentation (ideally about 3 m/s).

Guidance on modelling siphons can be found in WaPUG User Note 19 ‘Modelling of Inverted Siphons in Taunton’.

### 4.4.10 Operational Rules

If the network is actively operated under different operational rules and strategies those will be specified in the project scope, those should be modelled using RTC (Real time Control) functions in the software.

## 4.5 Hydrological Model Build

### 4.5.1 Catchment Demarcation

For the purposes of calibration of the hydrologic model, sub catchments should generally be demarcated with the following criteria:

* Be in the size range of 2-5Ha (note this catchment size is subject to the purpose of the model and the adopted resolution should be confirmed with WWL). Further refinement maybe required for areas with high density development.
* Follow property boundaries and road centrelines, and exclude large reserves and other undeveloped land such as school grounds where wastewater pipes are not present or minimal.
* Subcatchments should initially be based on district plan land uses, such as: residential, commercial, industrial, specific developments etc.
* During model build, land-uses may be further refined according to other land uses such as: housing density / affluence, warehouses, offices, factories, etc.
* Private drainage records should be obtained where the land use is special, such as: hospitals, airports, retail parks, industrial sites. Drainage records will help to identify where the flows enter the sewer system.
* Where applicable new catchment extents shall be developed to cover the future service area outside the existing area of service, loading node locations, DWF and runoff parameters will be developed in conjunction with discussions with WWL staff.
* For each sub catchment a loading node within the model extents should be defined, this node should generally be located within the lower third of the catchment. Simulated dry and wet weather flows will be loaded to this node.

### 4.5.2 Land Use data

The consultant must define contributing areas and set appropriate land uses within the model. For the purposes of development DWF inflows, each sub-catchment should be classified into development units which represent differing district plan land use.

### 4.5.3 Initial Catchment Hydrological Parameters

Sub catchment runoff parameters:

* Catchment slope: average slope calculated from DEM analysis
* Soil class: Based on LENZ 4
* Dimension: Square root of the area
* Rainfall profiles: Based on closest rain gauge

## 4.6 DWF Model Build

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

### 4.6.1 Residential Loads

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

## 4.7 Base Flow Setup

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
| Volume of Flow | -10%/+10% |
| Peak Flow | -10%/+10% |
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
> The calibration review is to be held at the completion of the flow calibration phase. 
> It is anticipated that this will involve the review of DWF calibration plots for each gauge. 
> The DWF Calibration portion of the Model Build and Calibration report should be in draft form, and issues arising for calibrations of any gauge should be raised and discussed at this review. 
> Steps to mitigate or correct any discrepancies that may arise should be agreed with WWL during this review and documented in the finalised report.
> The DWF plots and a draft version of the DWF section of the calibration report will be submitted to WWL for review. 
> The final report will identify any monitors that could not be matched to the stated criteria and discuss what steps have been taken compensate or correct issues found.

## 5.4 Wet Weather Flow Calibration

Calibrate the hydrological model for each of the nominated and agreed wet weather calibration events using a continuous simulation commencing at least two months prior to the commencement of the flow monitoring period and concluding at the end of the flow monitoring period.

### 5.4.1 WWF Event Identification

At least three mid-sized WWF events will be identified from the flow survey, 3 events shall be used for calibration with a further 2 events to be used in model validation. 

These events should be severe enough to cause a noticeable flow response at each of the gauges, where 

* the minimum WWF should exceed 2.0 * PDWF (Peak Dry Weather Flow) and 
* have a minimum rainfall depth of at least 20mm and a minimum rainfall intensity of 10mm/hr for at least 10mins. 
* In addition, the calibration event should not be so large as to cause significant surcharging and possible unmonitored overflows within the catchment – these more extreme events are preferred for model verification. Selected WWF events for calibration require approval from WWL.

### 5.4.2 Rainfall and Evaporation

At least 1 year of rainfall (generally 5 minutes data will be provided), sourced from nearest permanent rain gauge. This rainfall recorded can be utilized as a hot start to the calibration period.

A representative evaporation time series, which is to be simulated with all hydrological model runs, is to be established after discussion with WWL.

### 5.4.3 Wet Weather Calibration Procedure

The Infoworks Fixed, New UK and Ground Infiltration models are to be utilised to simulate the leakage characteristics of the lumped reticulations within each gauged catchment.

The model is to be run with rainfall and evaporation data to simulate the estimated I/I flow generated by the catchment. The nearest of the rain gauges are to be utilised to represent rainfall for the individual sub catchment. Representative monthly evaporation data is to be applied to each catchment.

The model is to be simulated with at least an initial 2 months of rainfall and evaporation data before the gauging period, to establish initial soil conditions and API 30.

The combination of the DWF and I/I hydrograph input is compared with the actual flow observed at the gauge. Infiltration is to be modelled with a ground infiltration profile for each gauging catchment. For the Groundwater Infiltration model, it is recommended that the soil store component is utilised to represent I/I, while the ground store component is configured so as not contribute to the modelled I/I (as per the parameters detailed in Table 3 ).

The ground infiltration can be calibrated by adjusting the percolation percentage infiltration, percolation coefficient, and percolation threshold ( The initial ground infiltration parameters are to be adopted after discussion and agreement with WWL).

| Item | Runoff Surface 10 | Runoff Surface 21 | Runoff Surface 99 |
| --- | --- | --- | --- |
| Description | FRC | SRC | GWI |
| Runoff Routing Value | 1 | 10 | 1 |
| Runoff Volume Type | Fixed | New UK | Fixed |
| Surface Type | Impervious | Pervious | Impervious |
| Ground Slope (m/m) | 0 | 0 | 0 |
| Initial Loss Value (m) | 0.000071 | 0.00028 | 0 |
| Fixed Runoff Coefficient | 0.9 |  | 0 |
| New UK Depth (m) |  | 0.2 |  |

> [!NOTE]
> | Item | Comments |
> | --- | --- |
> | Runoff Surface 4 | 40% of catchment area should be applied for the final runoff surface |
> | FRC | Fast Response Component |
> | SRC | Slow Response Component |
> | GWI | Groundwater Infiltration |

Whilst tables above and below summarise the details on runoff surfaces and ground infiltration. It is understood that certain parameters may change due to the nature of the catchment as such change in the parameters are to be discussed and agreed with WWL. Previous models, if available, may be used to derive the necessary values for the parameter.

| Field | Value | Calibration Parameter |
| --- | --- | --- |
| Soil Depth (m) | 1 | No |
| Percolation Coefficient |  | Yes |
| Baseflow Coefficient | 0.01 | No |
| Infiltration Coefficient | 0.2 | No |
| Percolation Threshold |  | Yes |
| Percolation Percentage Infiltrating |  | Yes |
| Porosity of Soil | 30 | No |
| Porosity of Ground | 20 | No |
| Baseflow Threshold Level (m) | -1 | No |
| Baseflow Threshold Type | Relative | No |
| Infiltration Threshold Level (m) | 0 | No |
| Infiltration Threshold Type | Relative | No |

### 5.4.4 WWF Calibration Criteria

Achieve the following minimum calibration accuracy limits in this process for each calibration event:

| Parameter | Tolerances |
| --- | --- |
| Volume of flow | +20%/-10% |
| Peak Flow | +20%/-10% |
| Peak Timing | ±30min |
| Peak Depth | ±20% |
| Shape | R² ≥ 0.7 of observed flow pattern |

WWL understand that judgement needs to be applied to these limits and exceptions to these tolerances will need to be discussed and agreed on a case by case basis if required. The reasons for non-compliance should be assessed and reported, including the potential impacts of the discrepancies and purpose of the model.

## 5.5 Hydraulic Calibration

The hydraulic model will be calibrated against depth data obtained from the three wet weather events and during DWF. The following parameters will be adjusted within the bounds of realistic numbers as part of the calibration process of the hydraulic model to achieve the required calibration accuracy:

* Pipe friction losses, this shall be applied to all upstream pipes or all pipes prior to the next upstream gauge;
* Conduit entrance and exit losses, these shall be varied only in consultation with WWL;
* Justified fat and sediment build-up, these areas shall be identified and applied in consultation with WWL.
* Adjustments of the above parameters are to be limited to the local network surrounding the gauge, based on engineering judgement.
* Weir gauging sites have an artificially elevated depth which is not to be calibrated against. These will only be calibrated to depth during surcharging, which can be identified as the result of downstream capacity constraints.

## 5.6 Model Verification

The objective of this stage will be to verify the overall model’s ability to estimate dry and wet weather flows. Following the flow and hydraulic model calibration, the model will be verified against the following:

* If available at least 2 WWF events (recorded during the gauging period but not selected for calibration). Plots and statistics will be produced for model performance vs all recorded gauge data and all available recorded pump station operation data.
* Running the model over the entire simulation period. From which scatter plots of gauged flow vs modelled flow are to be produced to determine any bias in the model estimates;
* Modelled EOP spills compared against any reported / recorded overflows during the flow survey.
* Review location and frequency of any simulated uncontrolled spills.

## 5.7 Model Validation

The purpose of this series analysis is to utilise recent rainfall with recent known network issues. The model will be simulated for at least the last 5 years of rainfall data recorded at the nearest permanent rain gauge and, dependent on data availability, the model performance shall be validated against:

* Comparison of pump volumes against available pump station SCADA records for at least three recent events;
* Comparison of simulated overflow frequencies and volumes against all reported / SCADA recorded overflows for the last 5 years.
Review location and frequency of any simulated uncontrolled spills.

If required and available, the model performance will be compared against the previous model simulations, for this rainfall time series. Where the following items are to be compared:

* If applicable overflow location, frequency and volume;
* Peak flow and volume for at least three events.

| Network | Wastewater Loads | Rainfall |
| --- | --- | --- |
| Existing Network | Existing | 5 years of rainfall data recorded at the nearest permanent rain gauge (s) |

## 5.8 Review

The calibration review is to be held at the completion of the WWF and hydraulic calibration phase. It is anticipated that this will involve the review for each gauge’s WWF and hydraulic calibration, verification and validation plots. A brief memo (note this memo is expected to be a draft form of the model build and calibration report) is to be submitted to WWL and should include details as described below. Note: It is important that issues arising for calibrations of any gauge should be raised and discussed at this review. Steps to mitigate or correct any discrepancies that may arise should be agreed during this review and documented in the finalised model build and calibration report.

> [!NOTE]
> Wet Weather Calibration: The WWF plots and a draft version of the WWF section of the calibration report will be submitted to WWL for review. The report will identify any monitors that could not be matched to the stated criteria, discuss why and identify any likely implications to the future use of the model.
> 
> Hydraulic Calibration: The calibration event level plots and a draft version of the hydraulic calibration section of the calibration report will be submitted to WWL for review. The report will identify any monitors that could not be matched to the stated criteria, discuss why and identify any likely implications to the future use of the model.
> 
> Model Verification: Verification plots demonstrating the model’s ability to predict dry and wet weather flows will be submitted and discussed for each flow gauging site.  Any Issues and comments arising from this review should be included in the finalised Model Build and Calibration report. The report should also comment on gauges where correlation is poor and provide reasons where possible.
> 
> Model Validation: > Results of Validation should be provided at review and should highlight any mismatches between model performance and network performance. The consultant will also comment on any issues on the model’s ability to predict historic network performance and the potential impact on the model’s capability to assess existing and future system performance.

## 5.9 Reporting

Following completion of any actions identified during the WWF calibration review (A.5), a draft model build and calibration report is to be produced which incorporate review memos A.1 to A.5. Following review and receipt of comments from WWL, a final report shall be produced. In addition, the consultant will supply calibrated model database and supporting workings and data.

# 6 System Performance Assessment

## 6.1 Overview

This section details the system performance model scenarios to be developed and assessed to identify network capacity limitations.

The below Table 7 outlines the core model setups required for this analysis, each of these setups are to be assessed for a number of different loading scenarios including:

* Dry Weather Flow (DWF);
* 10yrs Historical Rainfall Time Series;
* 1 Representative Design Storm (DS).

| Scenario ID | Scenario Name | Network | Wastewater Loads | Operational | Climate Change and Sea Level |
| --- | --- | --- | --- | --- | --- |
| Calib | Calibration Model | Existing | Current | Inclusion of RTC and silt to be agreed with WWL. | to be agreed with WWL. |
| Base | Existing | Committed | Current | Inclusion of RTC and silt to be agreed with WWL. | to be agreed with WWL. |
| CUR (usn1) | Current | Committed | + 3 years | Inclusion of RTC and silt to be agreed with WWL. | to be agreed with WWL. |
| MED (usn2) | Medium | Committed | + 10 years | Inclusion of RTC and silt to be agreed with WWL. | to be agreed with WWL. |
| M2L (usn3) | Medium to Long | Committed | + 20 years | Inclusion of RTC and silt to be agreed with WWL. | to be agreed with WWL. |
| LNG (usn4) | Long term | Committed | +30 years | Inclusion of RTC and silt to be agreed with WWL. | to be agreed with WWL. |
| MPD (usn5) | Maximum Possible Development | Committed | +50 years | Inclusion of RTC and silt to be agreed with WWL. | to be agreed with WWL. |
| SEN | Year + 50 + Sensitivity | Committed | +50 + sensitivity | Inclusion of RTC and silt to be agreed with WWL. | to be agreed with WWL. |

Committed means existing network with committed trunk network upgrade works which are under design or construction.

All scenarios are required to be developed, reviewed, and delivered to WWL. However, unless otherwise specified in the Project Brief, for the System Performance Assessment (SPA) only a limited number of scenarios are required to be assessed and reported upon, as follows:

* Base (Existing)
* M2L (+20 years)
* MPD (+50 years)
* SEN (+50 years and 25% additional) – tables only, no figures required

It is expected, unless other agreed with WWL, that system performance figure will produce following the template examples provided in Appendix H - Example System Performance Figures.

## 6.2 Items Supplied by WWL

WWL will supply the following in order to complete this analysis:

* Calibrated catchment model, including all associated files and Model Build and Calibration Report
* Historical rainfall and potential evaporation time series for the 10-year continuous time series period,
* Boundary time series where necessary, this will include river/stormwater systems/tide levels where appropriate.
* Specified catchment-wide assumptions and SQL queries to update and develop scenarios. See Appendix I for queries.

## 6.3 Scenario Development

### 6.3.1 Network Update with Committed Projects

The future development model scenarios shall be updated to include all schemes and rehabilitation works committed for construction. All changes made to the hydraulic model under committed schemes should be fully documented.

### 6.3.2 Wastewater Loads

WWL have developed a set of SQL queries to enable the system performance scenarios to be rapidly created, and to ensure consistency in approach. The purpose and key assumptions for each step are summarised in Appendix E, along with details on the SQL process, required information and formats, and purposes of each step. Running these queries will create the system performance scenarios and the resultant residential and non-residential population forecasts and hydrological parameters associated with the catchment assumptions for future scenarios.

Note that the provision of these SQL processes does not absolve the modeler of responsibility for checking that the inputs and outputs to this process are sensible.

### 6.3.3 Population Growth

Population forecasts for each scenario are automatically generated through the application of the SQL queries. Calibrated DWF loading rates (L/PE/Day) are to be multiplied by the population estimates to develop the assumed DWF loads. These will be adjusted by assumptions for water consumption reduction over time, as provided in the catchment-wide assumptions.

Non-Resident Population – Specific Developments and Seasonal/Event Variations
Increases in non-residential flows are generated through the application of the SQL (Appendix I - Scenario Development Set up for SQL), as are new commercial developments.

Seasonal/Event Variations will be developed on a case by case basis in discussions with WWL staff. It is anticipated that this is more likely to be specific to isolated projects and not to be considered from an overall catchment planning perspective.

## 6.4 Rainfall and Evaporation Data

### 6.4.1 10 years Historical rainfall

To assess catchment and network system performance a 10-year rainfall historical record will be simulated through the model. This rainfall record is to be sourced from the appropriate permanent/long term rain gauge located within the catchment and agreed with WWL. The determination of the 10yr continuous rainfall need to be developed using the Cardno methodology that is contained in the document “Analysis of Rainfall Trends” that was produced for WWL for input into the wastewater modelling catchments.  The analysis of the rainfall to be agreed with WWL.

### 6.4.2 Potential Evapo-transpiration

An evapotranspiration time series for the system performance is to be sourced from available daily historical records and agreed with WWL.

## 6.5 Dry Weather System Performance

### 6.5.1 Model Simulations

Table below outlines the DWF system performance assessment activity to be completed for each development scenario. To develop DWF results each scenario shall be simulated for 7 days covering weekday and weekend diurnal profiles.

| Scenario ID | Scenario Description | DWF Contribution (Infiltration / Exfiltration Analysis) | Pipe Siltation Potential | Sewer DWF Capacity | Pump Station Capacity |
| --- | --- | --- | --- | --- | --- |
| Base | Existing | Yes | Yes | Yes | Yes |
| M2L | Medium to Long (+20 years) | No | No | Yes | Yes |
| MPD | Maximum Possible Development (+50 years) | No | No | Yes | Yes |
| SEN | Year + 50 + Sensitivity | No | No | Yes | Yes |

### 6.5.2 DWF Contribution - Infiltration / Exfiltration Analysis

#### DWF Contribution – Background

DWF results form a combination of foul flow and, in many cases, groundwater infiltration. In other instances, ADWF can be a result of foul flow and exfiltration of a portion of the foul flow from the reticulation into the surrounding soil substrate. Foul flow is dependent on the equivalent population (EP) of the catchment, while the infiltration / exfiltration component is related to reticulation leakiness. Where infiltration can be due to elevated water tables leaking into the system through defects such as open pipe joints or pipe and manhole cracks in both sewers and house laterals, exfiltration of the sewage out of the reticulation system can occur in leaky systems with low groundwater tables.

To assess DWF contribution and the potential for infiltration / exfiltration, for each gauge catchment the following indicators are calculated, from WWL Water Consumption records (ADWF(wc)), where available,  and a design ADWF per population equivalent per day (ADWF(design))

From the above calculated data the following ratios are to be developed.

<p align="left">
  <img src="https://github.com/hrlewis1974/ww_modelling_spec/blob/83207fc6dfabc3c0bf3d88a2cca8288d18e9c15d/images/DWLR_1.png" width=900 />
</p>
<p align="left">
  <img src="https://github.com/hrlewis1974/ww_modelling_spec/blob/83207fc6dfabc3c0bf3d88a2cca8288d18e9c15d/images/DWLR_2.png" width=900 />
</p>