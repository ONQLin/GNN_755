###################################################################

# Created by write_sdc on Fri May  5 04:50:30 2023

###################################################################
set sdc_version 2.1

set_units -time ps -resistance kOhm -capacitance fF -voltage V -current mA
set_wire_load_mode segmented
set_max_fanout 128 [current_design]
set_load -pin_load 0.01 [get_ports {out0_node0[20]}]
set_load -pin_load 0.01 [get_ports {out0_node0[19]}]
set_load -pin_load 0.01 [get_ports {out0_node0[18]}]
set_load -pin_load 0.01 [get_ports {out0_node0[17]}]
set_load -pin_load 0.01 [get_ports {out0_node0[16]}]
set_load -pin_load 0.01 [get_ports {out0_node0[15]}]
set_load -pin_load 0.01 [get_ports {out0_node0[14]}]
set_load -pin_load 0.01 [get_ports {out0_node0[13]}]
set_load -pin_load 0.01 [get_ports {out0_node0[12]}]
set_load -pin_load 0.01 [get_ports {out0_node0[11]}]
set_load -pin_load 0.01 [get_ports {out0_node0[10]}]
set_load -pin_load 0.01 [get_ports {out0_node0[9]}]
set_load -pin_load 0.01 [get_ports {out0_node0[8]}]
set_load -pin_load 0.01 [get_ports {out0_node0[7]}]
set_load -pin_load 0.01 [get_ports {out0_node0[6]}]
set_load -pin_load 0.01 [get_ports {out0_node0[5]}]
set_load -pin_load 0.01 [get_ports {out0_node0[4]}]
set_load -pin_load 0.01 [get_ports {out0_node0[3]}]
set_load -pin_load 0.01 [get_ports {out0_node0[2]}]
set_load -pin_load 0.01 [get_ports {out0_node0[1]}]
set_load -pin_load 0.01 [get_ports {out0_node0[0]}]
set_load -pin_load 0.01 [get_ports {out1_node0[20]}]
set_load -pin_load 0.01 [get_ports {out1_node0[19]}]
set_load -pin_load 0.01 [get_ports {out1_node0[18]}]
set_load -pin_load 0.01 [get_ports {out1_node0[17]}]
set_load -pin_load 0.01 [get_ports {out1_node0[16]}]
set_load -pin_load 0.01 [get_ports {out1_node0[15]}]
set_load -pin_load 0.01 [get_ports {out1_node0[14]}]
set_load -pin_load 0.01 [get_ports {out1_node0[13]}]
set_load -pin_load 0.01 [get_ports {out1_node0[12]}]
set_load -pin_load 0.01 [get_ports {out1_node0[11]}]
set_load -pin_load 0.01 [get_ports {out1_node0[10]}]
set_load -pin_load 0.01 [get_ports {out1_node0[9]}]
set_load -pin_load 0.01 [get_ports {out1_node0[8]}]
set_load -pin_load 0.01 [get_ports {out1_node0[7]}]
set_load -pin_load 0.01 [get_ports {out1_node0[6]}]
set_load -pin_load 0.01 [get_ports {out1_node0[5]}]
set_load -pin_load 0.01 [get_ports {out1_node0[4]}]
set_load -pin_load 0.01 [get_ports {out1_node0[3]}]
set_load -pin_load 0.01 [get_ports {out1_node0[2]}]
set_load -pin_load 0.01 [get_ports {out1_node0[1]}]
set_load -pin_load 0.01 [get_ports {out1_node0[0]}]
set_load -pin_load 0.01 [get_ports {out0_node1[20]}]
set_load -pin_load 0.01 [get_ports {out0_node1[19]}]
set_load -pin_load 0.01 [get_ports {out0_node1[18]}]
set_load -pin_load 0.01 [get_ports {out0_node1[17]}]
set_load -pin_load 0.01 [get_ports {out0_node1[16]}]
set_load -pin_load 0.01 [get_ports {out0_node1[15]}]
set_load -pin_load 0.01 [get_ports {out0_node1[14]}]
set_load -pin_load 0.01 [get_ports {out0_node1[13]}]
set_load -pin_load 0.01 [get_ports {out0_node1[12]}]
set_load -pin_load 0.01 [get_ports {out0_node1[11]}]
set_load -pin_load 0.01 [get_ports {out0_node1[10]}]
set_load -pin_load 0.01 [get_ports {out0_node1[9]}]
set_load -pin_load 0.01 [get_ports {out0_node1[8]}]
set_load -pin_load 0.01 [get_ports {out0_node1[7]}]
set_load -pin_load 0.01 [get_ports {out0_node1[6]}]
set_load -pin_load 0.01 [get_ports {out0_node1[5]}]
set_load -pin_load 0.01 [get_ports {out0_node1[4]}]
set_load -pin_load 0.01 [get_ports {out0_node1[3]}]
set_load -pin_load 0.01 [get_ports {out0_node1[2]}]
set_load -pin_load 0.01 [get_ports {out0_node1[1]}]
set_load -pin_load 0.01 [get_ports {out0_node1[0]}]
set_load -pin_load 0.01 [get_ports {out1_node1[20]}]
set_load -pin_load 0.01 [get_ports {out1_node1[19]}]
set_load -pin_load 0.01 [get_ports {out1_node1[18]}]
set_load -pin_load 0.01 [get_ports {out1_node1[17]}]
set_load -pin_load 0.01 [get_ports {out1_node1[16]}]
set_load -pin_load 0.01 [get_ports {out1_node1[15]}]
set_load -pin_load 0.01 [get_ports {out1_node1[14]}]
set_load -pin_load 0.01 [get_ports {out1_node1[13]}]
set_load -pin_load 0.01 [get_ports {out1_node1[12]}]
set_load -pin_load 0.01 [get_ports {out1_node1[11]}]
set_load -pin_load 0.01 [get_ports {out1_node1[10]}]
set_load -pin_load 0.01 [get_ports {out1_node1[9]}]
set_load -pin_load 0.01 [get_ports {out1_node1[8]}]
set_load -pin_load 0.01 [get_ports {out1_node1[7]}]
set_load -pin_load 0.01 [get_ports {out1_node1[6]}]
set_load -pin_load 0.01 [get_ports {out1_node1[5]}]
set_load -pin_load 0.01 [get_ports {out1_node1[4]}]
set_load -pin_load 0.01 [get_ports {out1_node1[3]}]
set_load -pin_load 0.01 [get_ports {out1_node1[2]}]
set_load -pin_load 0.01 [get_ports {out1_node1[1]}]
set_load -pin_load 0.01 [get_ports {out1_node1[0]}]
set_load -pin_load 0.01 [get_ports {out0_node2[20]}]
set_load -pin_load 0.01 [get_ports {out0_node2[19]}]
set_load -pin_load 0.01 [get_ports {out0_node2[18]}]
set_load -pin_load 0.01 [get_ports {out0_node2[17]}]
set_load -pin_load 0.01 [get_ports {out0_node2[16]}]
set_load -pin_load 0.01 [get_ports {out0_node2[15]}]
set_load -pin_load 0.01 [get_ports {out0_node2[14]}]
set_load -pin_load 0.01 [get_ports {out0_node2[13]}]
set_load -pin_load 0.01 [get_ports {out0_node2[12]}]
set_load -pin_load 0.01 [get_ports {out0_node2[11]}]
set_load -pin_load 0.01 [get_ports {out0_node2[10]}]
set_load -pin_load 0.01 [get_ports {out0_node2[9]}]
set_load -pin_load 0.01 [get_ports {out0_node2[8]}]
set_load -pin_load 0.01 [get_ports {out0_node2[7]}]
set_load -pin_load 0.01 [get_ports {out0_node2[6]}]
set_load -pin_load 0.01 [get_ports {out0_node2[5]}]
set_load -pin_load 0.01 [get_ports {out0_node2[4]}]
set_load -pin_load 0.01 [get_ports {out0_node2[3]}]
set_load -pin_load 0.01 [get_ports {out0_node2[2]}]
set_load -pin_load 0.01 [get_ports {out0_node2[1]}]
set_load -pin_load 0.01 [get_ports {out0_node2[0]}]
set_load -pin_load 0.01 [get_ports {out1_node2[20]}]
set_load -pin_load 0.01 [get_ports {out1_node2[19]}]
set_load -pin_load 0.01 [get_ports {out1_node2[18]}]
set_load -pin_load 0.01 [get_ports {out1_node2[17]}]
set_load -pin_load 0.01 [get_ports {out1_node2[16]}]
set_load -pin_load 0.01 [get_ports {out1_node2[15]}]
set_load -pin_load 0.01 [get_ports {out1_node2[14]}]
set_load -pin_load 0.01 [get_ports {out1_node2[13]}]
set_load -pin_load 0.01 [get_ports {out1_node2[12]}]
set_load -pin_load 0.01 [get_ports {out1_node2[11]}]
set_load -pin_load 0.01 [get_ports {out1_node2[10]}]
set_load -pin_load 0.01 [get_ports {out1_node2[9]}]
set_load -pin_load 0.01 [get_ports {out1_node2[8]}]
set_load -pin_load 0.01 [get_ports {out1_node2[7]}]
set_load -pin_load 0.01 [get_ports {out1_node2[6]}]
set_load -pin_load 0.01 [get_ports {out1_node2[5]}]
set_load -pin_load 0.01 [get_ports {out1_node2[4]}]
set_load -pin_load 0.01 [get_ports {out1_node2[3]}]
set_load -pin_load 0.01 [get_ports {out1_node2[2]}]
set_load -pin_load 0.01 [get_ports {out1_node2[1]}]
set_load -pin_load 0.01 [get_ports {out1_node2[0]}]
set_load -pin_load 0.01 [get_ports {out0_node3[20]}]
set_load -pin_load 0.01 [get_ports {out0_node3[19]}]
set_load -pin_load 0.01 [get_ports {out0_node3[18]}]
set_load -pin_load 0.01 [get_ports {out0_node3[17]}]
set_load -pin_load 0.01 [get_ports {out0_node3[16]}]
set_load -pin_load 0.01 [get_ports {out0_node3[15]}]
set_load -pin_load 0.01 [get_ports {out0_node3[14]}]
set_load -pin_load 0.01 [get_ports {out0_node3[13]}]
set_load -pin_load 0.01 [get_ports {out0_node3[12]}]
set_load -pin_load 0.01 [get_ports {out0_node3[11]}]
set_load -pin_load 0.01 [get_ports {out0_node3[10]}]
set_load -pin_load 0.01 [get_ports {out0_node3[9]}]
set_load -pin_load 0.01 [get_ports {out0_node3[8]}]
set_load -pin_load 0.01 [get_ports {out0_node3[7]}]
set_load -pin_load 0.01 [get_ports {out0_node3[6]}]
set_load -pin_load 0.01 [get_ports {out0_node3[5]}]
set_load -pin_load 0.01 [get_ports {out0_node3[4]}]
set_load -pin_load 0.01 [get_ports {out0_node3[3]}]
set_load -pin_load 0.01 [get_ports {out0_node3[2]}]
set_load -pin_load 0.01 [get_ports {out0_node3[1]}]
set_load -pin_load 0.01 [get_ports {out0_node3[0]}]
set_load -pin_load 0.01 [get_ports {out1_node3[20]}]
set_load -pin_load 0.01 [get_ports {out1_node3[19]}]
set_load -pin_load 0.01 [get_ports {out1_node3[18]}]
set_load -pin_load 0.01 [get_ports {out1_node3[17]}]
set_load -pin_load 0.01 [get_ports {out1_node3[16]}]
set_load -pin_load 0.01 [get_ports {out1_node3[15]}]
set_load -pin_load 0.01 [get_ports {out1_node3[14]}]
set_load -pin_load 0.01 [get_ports {out1_node3[13]}]
set_load -pin_load 0.01 [get_ports {out1_node3[12]}]
set_load -pin_load 0.01 [get_ports {out1_node3[11]}]
set_load -pin_load 0.01 [get_ports {out1_node3[10]}]
set_load -pin_load 0.01 [get_ports {out1_node3[9]}]
set_load -pin_load 0.01 [get_ports {out1_node3[8]}]
set_load -pin_load 0.01 [get_ports {out1_node3[7]}]
set_load -pin_load 0.01 [get_ports {out1_node3[6]}]
set_load -pin_load 0.01 [get_ports {out1_node3[5]}]
set_load -pin_load 0.01 [get_ports {out1_node3[4]}]
set_load -pin_load 0.01 [get_ports {out1_node3[3]}]
set_load -pin_load 0.01 [get_ports {out1_node3[2]}]
set_load -pin_load 0.01 [get_ports {out1_node3[1]}]
set_load -pin_load 0.01 [get_ports {out1_node3[0]}]
set_load -pin_load 0.01 [get_ports out10_ready_node0]
set_load -pin_load 0.01 [get_ports out11_ready_node0]
set_load -pin_load 0.01 [get_ports out10_ready_node1]
set_load -pin_load 0.01 [get_ports out11_ready_node1]
set_load -pin_load 0.01 [get_ports out10_ready_node2]
set_load -pin_load 0.01 [get_ports out11_ready_node2]
set_load -pin_load 0.01 [get_ports out10_ready_node3]
set_load -pin_load 0.01 [get_ports out11_ready_node3]
create_clock [get_ports clk]  -period 1400  -waveform {0 700}
set_clock_uncertainty 0.01  [get_clocks clk]
set_clock_transition -min -fall 32 [get_clocks clk]
set_clock_transition -min -rise 32 [get_clocks clk]
set_clock_transition -max -fall 32 [get_clocks clk]
set_clock_transition -max -rise 32 [get_clocks clk]
create_generated_clock [list [get_pins -hsc @ node0/genblk7.rdy_sft_reg@CLK] [get_pins -hsc @        \
{node0/s_o1_reg[0][11]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[0][10]@CLK}]     \
[get_pins -hsc @ {node0/s_o1_reg[0][9]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[0][8]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[0][7]@CLK}]       \
[get_pins -hsc @ {node0/s_o1_reg[0][6]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[0][5]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[0][4]@CLK}]       \
[get_pins -hsc @ {node0/s_o1_reg[0][3]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[0][2]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[0][0]@CLK}]       \
[get_pins -hsc @ {node0/s_o1_reg[1][11]@CLK}] [get_pins -hsc @                 \
{node0/s_o1_reg[1][10]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[1][9]@CLK}]      \
[get_pins -hsc @ {node0/s_o1_reg[1][8]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[1][7]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[1][6]@CLK}]       \
[get_pins -hsc @ {node0/s_o1_reg[1][5]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[1][4]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[1][3]@CLK}]       \
[get_pins -hsc @ {node0/s_o1_reg[1][2]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[1][0]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[2][11]@CLK}]      \
[get_pins -hsc @ {node0/s_o1_reg[2][10]@CLK}] [get_pins -hsc @                 \
{node0/s_o1_reg[2][9]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[2][8]@CLK}]       \
[get_pins -hsc @ {node0/s_o1_reg[2][7]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[2][6]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[2][5]@CLK}]       \
[get_pins -hsc @ {node0/s_o1_reg[2][4]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[2][3]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[2][2]@CLK}]       \
[get_pins -hsc @ {node0/s_o1_reg[2][0]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[3][11]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[3][10]@CLK}]     \
[get_pins -hsc @ {node0/s_o1_reg[3][9]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[3][8]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[3][7]@CLK}]       \
[get_pins -hsc @ {node0/s_o1_reg[3][6]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[3][5]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[3][4]@CLK}]       \
[get_pins -hsc @ {node0/s_o1_reg[3][3]@CLK}] [get_pins -hsc @                  \
{node0/s_o1_reg[3][2]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[3][0]@CLK}]       \
[get_pins -hsc @ node0/out1_ready_reg@CLK] [get_pins -hsc @                    \
node0/out0_ready_reg@CLK] [get_pins -hsc @ {node1/s_o1_reg[0][11]@CLK}]        \
[get_pins -hsc @ {node1/s_o1_reg[0][10]@CLK}] [get_pins -hsc @                 \
{node1/s_o1_reg[0][9]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[0][8]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[0][7]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[0][6]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[0][5]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[0][4]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[0][3]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[0][2]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[0][0]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[1][11]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[1][10]@CLK}]     \
[get_pins -hsc @ {node1/s_o1_reg[1][9]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[1][8]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[1][7]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[1][6]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[1][5]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[1][4]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[1][3]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[1][2]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[1][0]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[2][11]@CLK}] [get_pins -hsc @                 \
{node1/s_o1_reg[2][10]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[2][9]@CLK}]      \
[get_pins -hsc @ {node1/s_o1_reg[2][8]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[2][7]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[2][6]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[2][5]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[2][4]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[2][3]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[2][2]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[2][0]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[3][11]@CLK}]      \
[get_pins -hsc @ {node1/s_o1_reg[3][10]@CLK}] [get_pins -hsc @                 \
{node1/s_o1_reg[3][9]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[3][8]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[3][7]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[3][6]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[3][5]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[3][4]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[3][3]@CLK}] [get_pins -hsc @ {node1/s_o1_reg[3][2]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[3][0]@CLK}] [get_pins -hsc @                  \
node1/out1_ready_reg@CLK] [get_pins -hsc @ node1/out0_ready_reg@CLK] [get_pins \
-hsc @ node1/genblk7.rdy_sft_reg@CLK] [get_pins -hsc @                         \
{node2/s_o1_reg[0][11]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[0][10]@CLK}]     \
[get_pins -hsc @ {node2/s_o1_reg[0][9]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[0][8]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[0][7]@CLK}]       \
[get_pins -hsc @ {node2/s_o1_reg[0][6]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[0][5]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[0][4]@CLK}]       \
[get_pins -hsc @ {node2/s_o1_reg[0][3]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[0][2]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[0][0]@CLK}]       \
[get_pins -hsc @ {node2/s_o1_reg[1][11]@CLK}] [get_pins -hsc @                 \
{node2/s_o1_reg[1][10]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[1][9]@CLK}]      \
[get_pins -hsc @ {node2/s_o1_reg[1][8]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[1][7]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[1][6]@CLK}]       \
[get_pins -hsc @ {node2/s_o1_reg[1][5]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[1][4]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[1][3]@CLK}]       \
[get_pins -hsc @ {node2/s_o1_reg[1][2]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[1][0]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[2][11]@CLK}]      \
[get_pins -hsc @ {node2/s_o1_reg[2][10]@CLK}] [get_pins -hsc @                 \
{node2/s_o1_reg[2][9]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[2][8]@CLK}]       \
[get_pins -hsc @ {node2/s_o1_reg[2][7]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[2][6]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[2][5]@CLK}]       \
[get_pins -hsc @ {node2/s_o1_reg[2][4]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[2][3]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[2][2]@CLK}]       \
[get_pins -hsc @ {node2/s_o1_reg[2][0]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[3][11]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[3][10]@CLK}]     \
[get_pins -hsc @ {node2/s_o1_reg[3][9]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[3][8]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[3][7]@CLK}]       \
[get_pins -hsc @ {node2/s_o1_reg[3][6]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[3][5]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[3][4]@CLK}]       \
[get_pins -hsc @ {node2/s_o1_reg[3][3]@CLK}] [get_pins -hsc @                  \
{node2/s_o1_reg[3][2]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[3][0]@CLK}]       \
[get_pins -hsc @ node2/out1_ready_reg@CLK] [get_pins -hsc @                    \
node2/out0_ready_reg@CLK] [get_pins -hsc @ node2/genblk7.rdy_sft_reg@CLK]      \
[get_pins -hsc @ node3/genblk7.rdy_sft_reg@CLK] [get_pins -hsc @               \
{node3/s_o1_reg[0][11]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[0][10]@CLK}]     \
[get_pins -hsc @ {node3/s_o1_reg[0][9]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[0][8]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[0][7]@CLK}]       \
[get_pins -hsc @ {node3/s_o1_reg[0][6]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[0][5]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[0][4]@CLK}]       \
[get_pins -hsc @ {node3/s_o1_reg[0][3]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[0][2]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[0][0]@CLK}]       \
[get_pins -hsc @ {node3/s_o1_reg[1][11]@CLK}] [get_pins -hsc @                 \
{node3/s_o1_reg[1][10]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[1][9]@CLK}]      \
[get_pins -hsc @ {node3/s_o1_reg[1][8]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[1][7]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[1][6]@CLK}]       \
[get_pins -hsc @ {node3/s_o1_reg[1][5]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[1][4]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[1][3]@CLK}]       \
[get_pins -hsc @ {node3/s_o1_reg[1][2]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[1][0]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[2][11]@CLK}]      \
[get_pins -hsc @ {node3/s_o1_reg[2][10]@CLK}] [get_pins -hsc @                 \
{node3/s_o1_reg[2][9]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[2][8]@CLK}]       \
[get_pins -hsc @ {node3/s_o1_reg[2][7]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[2][6]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[2][5]@CLK}]       \
[get_pins -hsc @ {node3/s_o1_reg[2][4]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[2][3]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[2][2]@CLK}]       \
[get_pins -hsc @ {node3/s_o1_reg[2][0]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[3][11]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[3][10]@CLK}]     \
[get_pins -hsc @ {node3/s_o1_reg[3][9]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[3][8]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[3][7]@CLK}]       \
[get_pins -hsc @ {node3/s_o1_reg[3][6]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[3][5]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[3][4]@CLK}]       \
[get_pins -hsc @ {node3/s_o1_reg[3][3]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[3][2]@CLK}] [get_pins -hsc @ {node3/s_o1_reg[3][0]@CLK}]       \
[get_pins -hsc @ node3/out1_ready_reg@CLK] [get_pins -hsc @                    \
node3/out0_ready_reg@CLK] [get_pins -hsc @ {node1/s_o1_reg[3][1]@CLK}]         \
[get_pins -hsc @ {node0/s_o1_reg[2][1]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[2][1]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[0][1]@CLK}]       \
[get_pins -hsc @ {node0/s_o1_reg[3][1]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[2][1]@CLK}] [get_pins -hsc @ {node0/s_o1_reg[1][1]@CLK}]       \
[get_pins -hsc @ {node1/s_o1_reg[0][1]@CLK}] [get_pins -hsc @                  \
{node1/s_o1_reg[1][1]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[2][1]@CLK}]       \
[get_pins -hsc @ {node3/s_o1_reg[0][1]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[3][1]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[0][1]@CLK}]       \
[get_pins -hsc @ {node2/s_o1_reg[3][1]@CLK}] [get_pins -hsc @                  \
{node3/s_o1_reg[1][1]@CLK}] [get_pins -hsc @ {node2/s_o1_reg[1][1]@CLK}]]  -name clk_gated  -source [get_ports clk]  -divide_by 1
set_clock_uncertainty 0.01  [get_clocks clk_gated]
set_clock_transition -min -fall 32 [get_clocks clk_gated]
set_clock_transition -min -rise 32 [get_clocks clk_gated]
set_clock_transition -max -fall 32 [get_clocks clk_gated]
set_clock_transition -max -rise 32 [get_clocks clk_gated]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node0[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node0[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node0[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node0[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node0[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node0[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node0[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node0[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node0[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node0[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node0[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node0[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node0[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node0[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node0[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node0[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node0[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node0[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node0[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node0[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node1[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node1[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node1[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node1[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node1[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node1[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node1[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node1[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node1[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node1[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node1[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node1[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node1[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node1[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node1[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node1[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node1[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node1[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node1[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node1[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node2[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node2[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node2[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node2[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node2[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node2[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node2[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node2[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node2[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node2[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node2[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node2[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node2[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node2[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node2[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node2[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node2[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node2[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node2[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node2[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node3[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node3[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node3[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node3[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x0_node3[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node3[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node3[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node3[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node3[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x1_node3[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node3[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node3[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node3[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node3[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x2_node3[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node3[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node3[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node3[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node3[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {x3_node3[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w04[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w04[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w04[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w04[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w04[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w14[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w14[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w14[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w14[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w14[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w24[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w24[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w24[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w24[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w24[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w34[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w34[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w34[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w34[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w34[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w05[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w05[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w05[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w05[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w05[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w15[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w15[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w15[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w15[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w15[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w25[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w25[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w25[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w25[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w25[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w35[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w35[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w35[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w35[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w35[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w06[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w06[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w06[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w06[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w06[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w16[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w16[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w16[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w16[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w16[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w26[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w26[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w26[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w26[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w26[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w36[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w36[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w36[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w36[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w36[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w07[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w07[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w07[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w07[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w07[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w17[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w17[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w17[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w17[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w17[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w27[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w27[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w27[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w27[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w27[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w37[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w37[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w37[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w37[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w37[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w48[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w48[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w48[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w48[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w48[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w58[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w58[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w58[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w58[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w58[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w68[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w68[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w68[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w68[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w68[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w78[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w78[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w78[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w78[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w78[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w49[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w49[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w49[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w49[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w49[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w59[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w59[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w59[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w59[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w59[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w69[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w69[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w69[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w69[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w69[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w79[4]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w79[3]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w79[2]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w79[1]}]
set_input_delay -clock clk_gated  0.1  [get_ports {w79[0]}]
set_input_delay -clock clk_gated  0.1  [get_ports in_ready]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[20]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[19]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[18]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[17]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[16]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[15]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[14]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[13]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[12]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[11]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[10]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[9]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[8]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[7]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[6]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[5]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[4]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[3]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[2]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[1]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node0[0]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[20]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[19]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[18]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[17]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[16]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[15]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[14]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[13]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[12]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[11]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[10]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[9]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[8]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[7]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[6]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[5]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[4]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[3]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[2]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[1]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node0[0]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[20]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[19]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[18]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[17]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[16]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[15]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[14]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[13]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[12]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[11]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[10]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[9]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[8]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[7]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[6]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[5]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[4]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[3]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[2]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[1]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node1[0]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[20]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[19]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[18]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[17]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[16]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[15]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[14]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[13]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[12]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[11]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[10]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[9]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[8]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[7]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[6]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[5]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[4]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[3]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[2]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[1]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node1[0]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[20]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[19]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[18]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[17]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[16]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[15]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[14]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[13]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[12]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[11]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[10]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[9]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[8]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[7]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[6]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[5]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[4]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[3]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[2]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[1]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node2[0]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[20]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[19]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[18]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[17]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[16]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[15]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[14]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[13]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[12]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[11]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[10]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[9]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[8]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[7]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[6]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[5]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[4]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[3]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[2]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[1]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node2[0]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[20]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[19]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[18]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[17]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[16]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[15]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[14]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[13]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[12]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[11]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[10]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[9]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[8]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[7]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[6]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[5]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[4]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[3]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[2]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[1]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out0_node3[0]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[20]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[19]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[18]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[17]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[16]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[15]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[14]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[13]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[12]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[11]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[10]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[9]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[8]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[7]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[6]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[5]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[4]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[3]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[2]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[1]}]
set_output_delay -clock clk_gated  0.1  [get_ports {out1_node3[0]}]
set_output_delay -clock clk_gated  0.1  [get_ports out10_ready_node0]
set_output_delay -clock clk_gated  0.1  [get_ports out11_ready_node0]
set_output_delay -clock clk_gated  0.1  [get_ports out10_ready_node1]
set_output_delay -clock clk_gated  0.1  [get_ports out11_ready_node1]
set_output_delay -clock clk_gated  0.1  [get_ports out10_ready_node2]
set_output_delay -clock clk_gated  0.1  [get_ports out11_ready_node2]
set_output_delay -clock clk_gated  0.1  [get_ports out10_ready_node3]
set_output_delay -clock clk_gated  0.1  [get_ports out11_ready_node3]
set_clock_groups  -asynchronous -name clk_1  -group [get_clocks clk] -group    \
[get_clocks clk_gated]
