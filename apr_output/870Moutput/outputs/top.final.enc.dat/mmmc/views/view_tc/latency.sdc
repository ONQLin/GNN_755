set_clock_latency -source -early -max -rise  -99.5772 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -102.033 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -99.5772 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -102.033 [get_ports {clk}] -clock clk 
