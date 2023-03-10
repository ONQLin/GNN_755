lappend search_path "/filespace/s/<username>/<working_directory>"

analyze -library work -format sverilog \
 {/filespace/s/<username>/<working_directory>/top.sv \
	 /filespace/s/skmandal/<username>/<working_directory>/mid.v \
	 /filespace/s/skmandal/<username>/<working_directory>/bottom.v
}
