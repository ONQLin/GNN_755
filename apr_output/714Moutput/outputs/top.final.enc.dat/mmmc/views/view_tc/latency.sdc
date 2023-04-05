set_clock_latency -source -early -max -rise  -90.7389 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -92.399 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -90.7389 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -92.399 [get_ports {clk}] -clock clk 
