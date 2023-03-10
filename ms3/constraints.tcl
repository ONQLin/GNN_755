## Clock with frequency of 2000ps = 0.5 GHz
create_clock -name "clk" -period 2000  { clk }
set_dont_touch_network [find port clk]

## Pointer to all inputs except clk_i
set prim_inputs [remove_from_collection [all_inputs] [find port clk]]
## Pointer to all inputs except clk_i and rst_n
## set prim_inputs_no_rst [remove_from_collection $prim_inputs [find port rst_ni]]
## Set clk_i uncertainty (skew)
set_clock_uncertainty 0.01 clk
set_clock_transition 32 clk

## Set input delay & drive on all inputs
set_input_delay -clock clk 0.1 [copy_collection $prim_inputs]
## rst_n goes to many places so don't touch
#set_dont_touch_network [find port rst_ni]

## Set output delay & load on all outputs
set_output_delay -clock clk 0.100 [all_outputs]
set_load 0.010 [all_outputs]

## Wire load model allows it to estimate internal parasitics 
#set_wire_load_model -name TSMC32K_Lowk_Conservative -library tcbn45gsbwptc
set_wire_load_mode "segmented" 

## Max transition time is important for Hot-E reasons 
#set_max_transition 0.1 [current_design]

set_max_fanout 128 top

set_host_options -max_cores 8