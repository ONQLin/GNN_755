file delete -force ./timingReports
file delete -force ./outputs
file delete -force ./reports
file delete -force {*}[glob -nocomplain *rpt*]

# the script is slightly different for different versions of innovus. please set this variable wit the version number
#set VERSION 17
#set VERSION 18
#set VERSION 19
#set VERSION 20
set VERSION 21

set init_design_uniquify 1

set init_verilog {./top.vg}

set init_design_netlisttype {Verilog}
set init_design_settop {1}
set init_top_cell {top}

## double check the following relative paths 
set DB_PATH "./asap7sc7p5t_28/DB/"					
set LEF_PATH "./asap7sc7p5t_28/LEF/scaled/"
set TLEF_PATH "./asap7sc7p5t_28/techlef_misc/"

set CELL_LEF "$LEF_PATH/asap7sc7p5t_28_R_4x_220121a.lef"
set TECH_LEF $TLEF_PATH/asap7_tech_4x_201209.lef

#tech lef first, cell lef later
set init_lef_file "$TECH_LEF $CELL_LEF"

set fp_core_cntl {aspect}
set fp_aspect_ratio {1.0000}
set extract_shrink_factor {1.0}
set init_assign_buffer {0}
set init_pwr_net {VDD}
set init_gnd_net {VSS}

# here starts the timing libraries
set init_cpf_file {}
set init_mmmc_file {./top.mmmc}

init_design 

# settings begin here
# defines tech node
if {$VERSION <= 19} {
	setDesignMode -process 7 
} else {
	setDesignMode -process 7 -node N7
}

setMultiCpuUsage -localCpu 8

if {$VERSION <= 20} {
	setNanoRouteMode -routeBottomRoutingLayer 2
	setNanoRouteMode -routeTopRoutingLayer 7
} else {
	setDesignMode -bottomRoutingLayer 2
	setDesignMode -topRoutingLayer 7
}

#this is the VDD for the std cells
globalNetConnect VDD -type pgpin -pin VDD -inst * 

# and the VSS
globalNetConnect VSS -type pgpin -pin VSS -inst * 

set FP_RING_OFFSET 0.384
set FP_RING_WIDTH 2.176
set FP_RING_SPACE 0.384
set FP_RING_SIZE [expr {$FP_RING_SPACE + 2*$FP_RING_WIDTH + $FP_RING_OFFSET + 1.1}]
#set FP_RING_SIZE [expr {$FP_RING_SPACE + 2*$FP_RING_WIDTH + $FP_RING_OFFSET}]
set FP_TARGET 280
set FP_MUL 5
# important: these numbers cannot be chosen arbitrarily, otherwise all VDD/VSS stripes are offgrid or there are no valid vias that can drop on them 
# FP_TARGET is the only variable you can freely modify. this one determines the number of standard cell rows in your design
# FP_MUL controls the aspect ratio. FP_MUL = 5 gives you a perfectly square design
# the additional 0.1 is to account for situations where innovus snaps the fplan and the space becomes too narrow to fit the rings 

set cellheight [expr 0.270 * 4 ]
set cellhgrid  0.216


set fpxdim [expr $cellhgrid * $FP_TARGET*$FP_MUL]
set fpydim [expr $cellheight * $FP_TARGET ]

# this command prints the snapping rules, it is useful for debugging
fpiGetSnapRule

floorPlan -site asap7sc7p5t -s $fpxdim $fpydim $FP_RING_SIZE $FP_RING_SIZE $FP_RING_SIZE $FP_RING_SIZE -noSnap
# this is likely not perfect because some snapping is done by innovus. the commands below came with the reference script by ASU. 
#changeFloorplan -coreToBottom [expr $FP_RING_SIZE] 
#add_tracks -honor_pitch

# the interval setting matches the M3 stripes for saving some resources. 
addWellTap -cell TAPCELL_ASAP7_75t_R -cellInterval 12.960 -inRowOffset 1.296

if {$VERSION >= 21} {
	# this series of commands makes innovus 21 happy :)
	add_tracks -snap_m1_track_to_cell_pins
	add_tracks -mode replace -offsets {M5 vertical 0}
	deleteAllFPObjects
	addWellTap -cell TAPCELL_ASAP7_75t_R -cellInterval 12.960 -inRowOffset 1.296
}

# classic setting: all inputs on the left and right, all outputs on the top and bottom.
setPinAssignMode -pinEditInBatch true

editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side LEFT -layer 3 -spreadType center -spacing 2.016 -pin {clk in_ready {x0_node0[4]} {x0_node0[3]} {x0_node0[2]} {x0_node0[1]} {x0_node0[0]} {x1_node0[4]} {x1_node0[3]} {x1_node0[2]} {x1_node0[1]} {x1_node0[0]} {x2_node0[4]} {x2_node0[3]} {x2_node0[2]} {x2_node0[1]} {x2_node0[0]} {x3_node0[4]} {x3_node0[3]} {x3_node0[2]} {x3_node0[1]} {x3_node0[0]} {x0_node1[4]} {x0_node1[3]} {x0_node1[2]} {x0_node1[1]} {x0_node1[0]} {x1_node1[4]} {x1_node1[3]} {x1_node1[2]} {x1_node1[1]} {x1_node1[0]} {x2_node1[4]} {x2_node1[3]} {x2_node1[2]} {x2_node1[1]} {x2_node1[0]} {x3_node1[4]} {x3_node1[3]} {x3_node1[2]} {x3_node1[1]} {x3_node1[0]} {x0_node2[4]} {x0_node2[3]} {x0_node2[2]} {x0_node2[1]} {x0_node2[0]} {x1_node2[4]} {x1_node2[3]} {x1_node2[2]} {x1_node2[1]} {x1_node2[0]} {x2_node2[4]} {x2_node2[3]} {x2_node2[2]} {x2_node2[1]} {x2_node2[0]} {x3_node2[4]} {x3_node2[3]} {x3_node2[2]} {x3_node2[1]} {x3_node2[0]} {x0_node3[4]} {x0_node3[3]} {x0_node3[2]} {x0_node3[1]} {x0_node3[0]} {x1_node3[4]} {x1_node3[3]} {x1_node3[2]} {x1_node3[1]} {x1_node3[0]} {x2_node3[4]} {x2_node3[3]} {x2_node3[2]} {x2_node3[1]} {x2_node3[0]} {x3_node3[4]} {x3_node3[3]} {x3_node3[2]} {x3_node3[1]} {x3_node3[0]}  }

editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side RIGHT -layer 3 -spreadType center -spacing 2.016 -pin {{w04[4]} {w04[3]} {w04[2]} {w04[1]} {w04[0]} {w14[4]} {w14[3]} {w14[2]} {w14[1]} {w14[0]} {w24[4]} {w24[3]} {w24[2]} {w24[1]} {w24[0]} {w34[4]} {w34[3]} {w34[2]} {w34[1]} {w34[0]} {w05[4]} {w05[3]} {w05[2]} {w05[1]} {w05[0]} {w15[4]} {w15[3]} {w15[2]} {w15[1]} {w15[0]} {w25[4]} {w25[3]} {w25[2]} {w25[1]} {w25[0]} {w35[4]} {w35[3]} {w35[2]} {w35[1]} {w35[0]} {w06[4]} {w06[3]} {w06[2]} {w06[1]} {w06[0]} {w16[4]} {w16[3]} {w16[2]} {w16[1]} {w16[0]} {w26[4]} {w26[3]} {w26[2]} {w26[1]} {w26[0]} {w36[4]} {w36[3]} {w36[2]} {w36[1]} {w36[0]} {w07[4]} {w07[3]} {w07[2]} {w07[1]} {w07[0]} {w17[4]} {w17[3]} {w17[2]} {w17[1]} {w17[0]} {w27[4]} {w27[3]} {w27[2]} {w27[1]} {w27[0]} {w37[4]} {w37[3]} {w37[2]} {w37[1]} {w37[0]} {w48[4]} {w48[3]} {w48[2]} {w48[1]} {w48[0]} {w58[4]} {w58[3]} {w58[2]} {w58[1]} {w58[0]} {w68[4]} {w68[3]} {w68[2]} {w68[1]} {w68[0]} {w78[4]} {w78[3]} {w78[2]} {w78[1]} {w78[0]} {w49[4]} {w49[3]} {w49[2]} {w49[1]} {w49[0]} {w59[4]} {w59[3]} {w59[2]} {w59[1]} {w59[0]} {w69[4]} {w69[3]} {w69[2]} {w69[1]} {w69[0]} {w79[4]} {w79[3]} {w79[2]} {w79[1]} {w79[0]}}

editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side TOP -layer 3 -spreadType center -spacing 2.016 -pin {{out0_node0[20]} {out0_node0[19]} {out0_node0[18]} {out0_node0[17]} {out0_node0[16]} {out0_node0[15]} {out0_node0[14]} {out0_node0[13]} {out0_node0[12]} {out0_node0[11]} {out0_node0[10]} {out0_node0[9]} {out0_node0[8]} {out0_node0[7]} {out0_node0[6]} {out0_node0[5]} {out0_node0[4]} {out0_node0[3]} {out0_node0[2]} {out0_node0[1]} {out0_node0[0]} {out1_node0[20]} {out1_node0[19]} {out1_node0[18]} {out1_node0[17]} {out1_node0[16]} {out1_node0[15]} {out1_node0[14]} {out1_node0[13]} {out1_node0[12]} {out1_node0[11]} {out1_node0[10]} {out1_node0[9]} {out1_node0[8]} {out1_node0[7]} {out1_node0[6]} {out1_node0[5]} {out1_node0[4]} {out1_node0[3]} {out1_node0[2]} {out1_node0[1]} {out1_node0[0]} {out0_node1[20]} {out0_node1[19]} {out0_node1[18]} {out0_node1[17]} {out0_node1[16]} {out0_node1[15]} {out0_node1[14]} {out0_node1[13]} {out0_node1[12]} {out0_node1[11]} {out0_node1[10]} {out0_node1[9]} {out0_node1[8]} {out0_node1[7]} {out0_node1[6]} {out0_node1[5]} {out0_node1[4]} {out0_node1[3]} {out0_node1[2]} {out0_node1[1]} {out0_node1[0]} {out1_node1[20]} {out1_node1[19]} {out1_node1[18]} {out1_node1[17]} {out1_node1[16]} {out1_node1[15]} {out1_node1[14]} {out1_node1[13]} {out1_node1[12]} {out1_node1[11]} {out1_node1[10]} {out1_node1[9]} {out1_node1[8]} {out1_node1[7]} {out1_node1[6]} {out1_node1[5]} {out1_node1[4]} {out1_node1[3]} {out1_node1[2]} {out1_node1[1]} {out1_node1[0]}  out10_ready_node0 out11_ready_node0 out10_ready_node1 out11_ready_node1}

editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side BOTTOM -layer 3 -spreadType center -spacing 2.016 -pin {{out0_node2[20]} {out0_node2[19]} {out0_node2[18]} {out0_node2[17]} {out0_node2[16]} {out0_node2[15]} {out0_node2[14]} {out0_node2[13]} {out0_node2[12]} {out0_node2[11]} {out0_node2[10]} {out0_node2[9]} {out0_node2[8]} {out0_node2[7]} {out0_node2[6]} {out0_node2[5]} {out0_node2[4]} {out0_node2[3]} {out0_node2[2]} {out0_node2[1]} {out0_node2[0]} {out1_node2[20]} {out1_node2[19]} {out1_node2[18]} {out1_node2[17]} {out1_node2[16]} {out1_node2[15]} {out1_node2[14]} {out1_node2[13]} {out1_node2[12]} {out1_node2[11]} {out1_node2[10]} {out1_node2[9]} {out1_node2[8]} {out1_node2[7]} {out1_node2[6]} {out1_node2[5]} {out1_node2[4]} {out1_node2[3]} {out1_node2[2]} {out1_node2[1]} {out1_node2[0]} {out0_node3[20]} {out0_node3[19]} {out0_node3[18]} {out0_node3[17]} {out0_node3[16]} {out0_node3[15]} {out0_node3[14]} {out0_node3[13]} {out0_node3[12]} {out0_node3[11]} {out0_node3[10]} {out0_node3[9]} {out0_node3[8]} {out0_node3[7]} {out0_node3[6]} {out0_node3[5]} {out0_node3[4]} {out0_node3[3]} {out0_node3[2]} {out0_node3[1]} {out0_node3[0]} {out1_node3[20]} {out1_node3[19]} {out1_node3[18]} {out1_node3[17]} {out1_node3[16]} {out1_node3[15]} {out1_node3[14]} {out1_node3[13]} {out1_node3[12]} {out1_node3[11]} {out1_node3[10]} {out1_node3[9]} {out1_node3[8]} {out1_node3[7]} {out1_node3[6]} {out1_node3[5]} {out1_node3[4]} {out1_node3[3]} {out1_node3[2]} {out1_node3[1]} {out1_node3[0]} out10_ready_node2 out11_ready_node2 out10_ready_node3 out11_ready_node3}

editPin -snap TRACK -pin *
setPinAssignMode -pinEditInBatch false
legalizePin

# now we are going to add the core ring using M6/M7
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Pad -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top M7 bottom M7 left M6 right M6} -width $FP_RING_WIDTH -spacing $FP_RING_SPACE -offset $FP_RING_OFFSET -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

# now we are going to add M2 follow rails. on top of every standard cell row. we need to add VSS and VDD separately because the number of rows is not always odd. it is possible you need one extra stripe of VDD, but not VSS.
addStripe  -skip_via_on_wire_shape blockring \
    -direction horizontal \
    -set_to_set_distance [expr 2*$cellheight] \
    -skip_via_on_pin Standardcell \
    -stacked_via_top_layer  M1 \
    -layer M2 \
    -width 0.072 \
    -nets {VDD} \
    -stacked_via_bottom_layer M1 \
    -start_from bottom \
    -snap_wire_center_to_grid None \
    -start_offset -0.044 \
    -stop_offset -0.044

addStripe  -skip_via_on_wire_shape blockring \
    -direction horizontal \
    -set_to_set_distance [expr 2*$cellheight] \
    -skip_via_on_pin Standardcell \
    -stacked_via_top_layer  M1 \
    -layer M2 \
    -width 0.072 \
    -nets {VSS} \
    -stacked_via_bottom_layer M1 \
    -start_from bottom \
    -snap_wire_center_to_grid None \
    -start_offset [expr $cellheight -0.044] \
    -stop_offset -0.044

# now we are going to add vertical M3 stripes. the metal stack is very restrictive, it is not easy to use other metals because of assumptions made with respect to V2 and V1. 
set m3pwrwidth 0.936
set m3pwrspacing 0.360
set m3pwrset2setdist    12.960

# looks like this   |0.936|0.360|0.936|long space... repeat pattern 
# if the last vertical M3 stripe is too close to the edge of the core, it can create a DRC violation. this stripe can be deleted manually.

addStripe  -skip_via_on_wire_shape Noshape \
    -set_to_set_distance $m3pwrset2setdist \
    -skip_via_on_pin Standardcell \
    -stacked_via_top_layer Pad \
    -spacing $m3pwrspacing \
    -xleft_offset 0.360 \
    -layer M3 \
    -width $m3pwrwidth \
    -nets {VDD VSS} \
    -stacked_via_bottom_layer M2 \
    -start_from left

# innovus 17 does some unusual large via selection for the power grid and generates violations
# the commands below fix that
if {$VERSION == 17} {
	editPowerVia -delete_vias 1 -top_layer 4 -bottom_layer 3
	editPowerVia -add_vias 1
}

# now we are going to add horizontal M4 stripes. the metal stack is very restrictive, it is not easy to use other metals because of assumptions made with respect to V2 and V1. 
set m4pwrwidth 0.864
set m4pwrspacing 0.864
set m4pwrset2setdist 21.6

# looks like this   |0.864|0.864|0.864|long space... repeat pattern 
addStripe  -skip_via_on_wire_shape Noshape \
    -direction horizontal \
    -set_to_set_distance $m4pwrset2setdist \
    -skip_via_on_pin Standardcell \
    -stacked_via_top_layer M7 \
    -spacing $m4pwrspacing \
    -layer M4 \
    -width $m4pwrwidth \
    -nets {VDD VSS} \
    -stacked_via_bottom_layer M3 \
    -start_from bottom

setSrouteMode -reset
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { corePin } -layerChangeRange { M1(1) M7(1) } -blockPinTarget { nearestTarget } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -deleteExistingRoutes -allowJogging 0 -crossoverViaLayerRange { M1(1) Pad(10) } -nets { VDD VSS } -allowLayerChange 0 -targetViaLayerRange { M1(1) Pad(10) }

editPowerVia -add_vias 1 -orthogonal_only 0

verify_drc

setOptMode -holdTargetSlack  0.020
setOptMode -setupTargetSlack 0.020

#setPlaceMode -place_detail_preroute_as_obs 3

# this helps verify_drc realize that some metals are colored. 
colorizePowerMesh


place_opt_design

# add tie hi lo at this point. could have been handled in genus too.
setTieHiLoMode -maxFanout 5
addTieHiLo -prefix TIE -cell {TIELOx1_ASAP7_75t_R TIEHIx1_ASAP7_75t_R}

# CTS
ccopt_design

set_interactive_constraint_modes [all_constraint_modes -active]
reset_propagated_clock [all_clocks]
if {$VERSION == 21} {
	set_propagated_clock [all_clocks]
	#update_io_latency -source -verbose
} else {
	set_propagated_clock [all_clocks]
}

legalizePin  

routeDesign

# for some versions of innovus, silly mistakes are made when assigning colors to vias on the power rings. these lines fix it.
editPowerVia -delete_vias 1 -top_layer 7 -bottom_layer 6	
editPowerVia -delete_vias 1 -top_layer 6 -bottom_layer 5
editPowerVia -delete_vias 1 -top_layer 5 -bottom_layer 4
editPowerVia -delete_vias 1 -top_layer 4 -bottom_layer 3
editPowerVia -delete_vias 1 -top_layer 3 -bottom_layer 2
editPowerVia -delete_vias 1 -top_layer 2 -bottom_layer 1
editPowerVia -add_vias 1
setAnalysisMode -analysisType onChipVariation
setSIMode -enable_glitch_report true
setSIMode -enable_glitch_propagation true
setSIMode -enable_delay_report true
optDesign -postRoute
optDesign -postRoute -hold

report_noise -threshold 0.2 
report_noise -bumpy_waveform 

# Writing out the def file and the netlist
set defOutLefVia 1
set defOutLefNDR 1
defOut -netlist -routing -allLayers ${DB_PATH}${init_top_cell}_v${VERSION}.def
saveNetlist ${DB_PATH}${init_top_cell}_v${VERSION}.v													


# do your final checks and write the design out
report_power > ./reports/post_route.power.rpt
report_timing > ./reports/post_route.timing.rpt
report_area > ./reports/post_route.area.rpt
report_analysis_summary > ./reports/post_route.summary.rpt

#Verify DRC
verify_drc > ./reports/post_route.drc.rpt

# Extract resistance and capacitance for timing and power analysis.
rcOut -rc_corner rc_typ_25 -spef outputs/top.apr.spef

# Save final Design
saveNetlist outputs/top.apr.v
write_sdc outputs/top.apr.sdc
saveNetlist outputs/top.apr_pg.v -includePowerGround -excludeLeafCell
saveDesign outputs/top.final.enc



# setStreamOutMode -reset

# streamOut outputs/top.gds.gz \
#     -mapFile {./asap7sc7p5t_28/GDS/gds2.map} \
#     -libName DesignLib \
#     -uniquifyCellNames \
#     -outputMacros \
#     -stripes 1 \
#     -mode ALL \
#     -units 4000 \
#     -reportFile ./report/top/gds_stream_out_final.rpt \
#     -merge { ./asap7sc7p5t_28/GDS/asap7sc7p5t_28_R_220121a_scaled4x.gds}




# final notes
# there is a lot more that this script could do to become more industry-like. 
# - The SDC should be more realistic. The in/out constraints are picked almost arbitrarily.
# - It should handle path groups. 
# - It could have better setup/hold targets
# - It should handle DFT/scan. 
# - It should/could have more OPT runs to help with convergence at the end. 
# - It should do signoff-quality checks at the end, but this requires external quantus and licenses. Some users might not have it, so the commands are not provided
