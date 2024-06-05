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
- Identification of negative pipe gradients;
- Reducing pipe diameters in downstream direction;
- pipe invert step up in the downstream direction
- Steep pipes (>10% slope);
- Non-matching pipe soffits;
- Identification of locations where pipe invert doesn’t correspond to manhole invert level (i. e. pipe IL being below manhole IL etc.)
* Confirmation of network connectivity.
* Missing, inconsistent, ambiguous data relating to pump stations, constructed overflows or any other ancillaries that are to be included in the model
* Identification of flow directions

### Asset Data – Data Collection

Following review of asset data, a prioritized list (plus figures showing locations) of data collection requirements should be generated and agreed with WWL. The following priority survey subdivision is suggested:

*High – Critical to model confidence i.e. overflow details, pump station data etc.
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
> - Data collection request plan (High: Red; Medium: Purple; Low: Yellow)
> * Determination of data gaps or data inconsistencies;
> - Discussion on the quality and coverage of the gauge data and identification of areas where possible issues may arise during calibration
> * Recommendations for additional work for obtaining missing data;
> - A statement assessing the expected level of confidence in the model outputs and identify the associated potential limitations to model application
Recommended updates to GIS or other data management software (eg: InfoNet)
> * Summary of operational issues identified in the network;
> * Gauge Summary
> - Flow gauge catchment details and schematic diagram
> - Flow data summary including selected events for DWF calibration / verification, WWF calibration/ verification
> - Rainfall data summary indicating the ARI values for each event, total rainfall depth and maximum rainfall intensity for each event. Also indicate whether collected data are suitable for use in the model calibration and verification process.
> - Indicate whether PWWF/PDWF criterion is met for selected event
> - Gauged spills statistics – frequency, duration.
> - Provide a summary tables of daily average observed wastewater flow volumes and average volume of water usage meter records for each gauge catchment for dry weather period
