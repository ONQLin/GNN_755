set_clock_latency -source -early -max -rise  -117.136 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -119.315 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -117.136 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -119.315 [get_ports {clk}] -clock clk 
