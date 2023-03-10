lappend search_path "/filespace/j/jlin445/ece755/GNN_755/MS_3_Synthesis"

analyze -library work -format sverilog \
 {/filespace/j/jlin445/ece755/GNN_755/MS_3_Synthesis/gnn_top.sv \
	 /filespace/j/jlin445/ece755/GNN_755/MS_3_Synthesis/dnn_top.sv
}
