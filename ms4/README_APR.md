# Milestone 4: Automatic Place & Route (APR)

## 1. Download Library
Copy the library to the MS_3_Synthesis folder:
````
cd MS_4_APR
cp -r /cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/asap7sc7p5t_28 .

## unzip .gz files
cd asap7sc7p5t_28/LIB/NLDM
gzip -d *.gz
````
You can also find it in github:
https://github.com/The-OpenROAD-Project/asap7

## 2. Update techlef file
Copy the provided `asap7_tech_4x_201209.lef` into `/asap7sc7p5t_28/techlef_misc` and replace the old one.

The reason is I had DRC violations with the original techlef, and then I found a patch through Github. This repository provides a good reference design. Again, the asap7 library is open-sourced, and it may not be fully tested with an industry standard.

Ref. https://github.com/Centre-for-Hardware-Security/asap7_reference_design

## 3. APR
1. Make sure the design SDC (top.sdc) and synthesized netlist (top.vg) are placed in this directory

2. Source the environment using the following commands (once in each new terminal)
````
export TERM=xterm-basic
source /cae/apps/env/cadence-INNOVUS21.14.000 
````

3. Run Cadence Innovus to perform APR
````
innovus -no_gui -files apr_reference.tcl
````

4. Check reports and outputs
   - DRC/power/timing/area reports are dumped in `./reports/`
   - Timing violations reports are dumped in `./timingReports/top_postRoute_hold.summary`
   - The Verilog gate-level netlist is dumped in `./outputs/`
   - Make sure no DRC and timing violations

5. Zip and submit `./reports`, `./timingReports` and  `./outputs`