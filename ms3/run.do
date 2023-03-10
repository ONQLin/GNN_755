if [batch_mode] {
   # run 10000
   run -all
   quit -f

} else {
   add wave tb_top_v1/*
   #add wave -position insertpoint sim:/tb_top_v1/*
   # add wave -r  \
   #    tb_top_v1/top/out0_node0 \
   #    tb_top_v1/top/out1_node0 \
   #    tb_top_v1/top/out0_node1 \
   #    tb_top_v1/top/out1_node1 \
   #    tb_top_v1/top/out0_node2 \
   #    tb_top_v1/top/out1_node2 \
   #    tb_top_v1/top/out0_node3 \
   #    tb_top_v1/top/out1_node3 \
   #    tb_top_v1/top/in_ready \
   #    tb_top_v1/top/clk \
   #    tb_top_v1/top/out10_ready_node0 \
   #    tb_top_v1/top/out11_ready_node0 \
   #    tb_top_v1/top/out10_ready_node1 \
   #    tb_top_v1/top/out11_ready_node1 \
   #    tb_top_v1/top/out10_ready_node2 \
   #    tb_top_v1/top/out11_ready_node2 \
   #    tb_top_v1/top/out10_ready_node3 \
   #    tb_top_v1/top/out11_ready_node3
   log -r */*
   # run 10000
   run -all
}

