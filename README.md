# BD State/Division Mapper for Google Tag Manager

Technical documentation for the BD State/Division Mapper variable template.

## Overview

BD State/Division Mapper is a specialized utility for Google Tag Manager (GTM) that automatically categorizes Bangladeshi Districts into their respective official administrative Divisions (States). This tool is essential for GA4 and Meta tracking where regional parameters are required for granular geographic reporting.

## Core Benefits

- **Standardized Analytics:** Ensures that regional reports in GA4 remain unified and actionable.
- **Audience Segmentation:** Facilitates the creation of marketing segments based on broad geographical regions (e.g., Dhaka Division).
- **Automated Mapping:** Eliminates the need for manual Lookup Tables within GTM by providing a native mapping for all 64 districts.

## Features

- **Comprehensive Library:** Includes structural mapping for all 8 official divisions of Bangladesh (Dhaka, Chattogram, Rajshahi, Khulna, Sylhet, Barishal, Rangpur, Mymensingh).
- **String Parsing:** Scans address strings to identify district names and returns the corresponding division.
- **Localized Sensitivity:** Optimized to recognize administrative spelling variants common in the Bangladesh market.

## Configuration Instructions

1. **Import:** Add the `template.tpl` file to the GTM container.
2. **Variable Creation:** Setup a new variable using the "BD State/Division Mapper" template.
3. **Parameter Setup:** Assign the "Full Address" field to your primary address Data Layer variable.
4. **Integration:** Use this variable for geographic configuration in GA4 or Meta Conversions API.

## Mapping References

| Detected District | Mapped Division (State) |
| :--- | :--- |
| `Gazipur` | `Dhaka` |
| `Feni` | `Chattogram` |
| `Pabna` | `Rajshahi` |
| `Jessore` | `Khulna` |

## Technical Support and Attribution

Developed and maintained by **Md Sadikul Islam Shadin**.

Additional tracking tools and resources are available via [GitHub](https://github.com/trackingwithshadin).
