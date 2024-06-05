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

> [!NOTE] Output: WWL Review A.1 – Model Extents
> A brief memo (or email if agreed with WWL) detailing the proposed draft model extents shall be prepared and submitted to WWL for review and approval prior to progressing to the next phase. Typically, the memo should detail the following:
> - Catchment service area extents, and identify any alterations to the catchment boundary supplied by WWL;
> - If available locations and types monitoring data within the catchment (including temporary and permanent (SCADA) i.e. rain gauges (temporary, permanent), flow and level data.
> - Identification of all known asset types proposed to be included within model extents and identify network to be excluded. In particular detail pump stations, bifurcations and EOPs other key assets which are within and outside model extents
> - Detail known and reported wastewater network issues;
> - Low points within the network, that may suffer from uncontrolled spills;
> - Identification of key growth areas within the catchment;
> - Provision of a network schematic detailing connectivity and significant network features (pump stations, bifurcations, engineered overflow points, gates etc...).