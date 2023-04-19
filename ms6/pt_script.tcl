#############################################################
## Library settings
#############################################################
## Library settings are sourced from `.synopsys_pt.setup`
## Please double check the line 77 of `.synopsys_pt.setup`

#############################################################
## Initial setup
#############################################################
set top top
file delete -force ./reports
file mkdir ./reports

#############################################################
## Enable power analysis mode in PrimeTime
#############################################################
set power_enable_analysis true

#############################################################
## Read design and link
#############################################################
redirect -tee ./reports/read_netlist.log { read_verilog outputs/top.apr.v }

current_design ${top}

redirect -tee ./reports/link.log { link }

#############################################################
## Read design constraints
#############################################################
redirect -tee ./reports/read_sdc.log { read_sdc outputs/top.sdc }

#############################################################
## Read design parasitics
#############################################################
redirect -tee ./reports/read_spef.log { read_parasitics -format SPEF outputs/top.apr.spef }

#############################################################
## Dump reports
#############################################################
redirect -tee ./reports/pt.check_timing.rpt    { check_timing }
redirect -tee ./reports/pt.area.rpt    { report_cell_usage }
redirect -tee ./reports/pt.update_timing.rpt   { update_timing }
redirect -tee ./reports/pt.timing.rpt          { report_timing }
redirect -tee ./reports/pt.update_power.rpt    { update_power }
redirect -tee ./reports/pt.power.rpt           { report_power -verbose }
redirect -tee ./reports/pt.hier_power.rpt      { report_power -hierarchy -nosplit }
redirect -tee ./reports/pt.timing.setup.rpt    { report_timing -delay max -max_paths 20 }
redirect -tee ./reports/pt.timing.hold.rpt     { report_timing -delay min -max_paths 20 }
