set_clock_latency -source -early -max -rise  -111.243 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -113.25 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -111.243 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -113.25 [get_ports {clk}] -clock clk 
