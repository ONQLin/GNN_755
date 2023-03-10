# Milestone 3: Synthesis

## 1. Download Library
Copy the library to the MS_3_Synthesis folder:
````
cd MS_3_Synthesis
cp -r /cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/asap7sc7p5t_28 .
````
You can also find it in github:
https://github.com/The-OpenROAD-Project/asap7


## 2. Complie Library
Becasue Synopsys Design Compiler only supports .db format file for synthesis, we have to use Library Compiler to convert .lib files to .db format. We will use these libraries:
- asap7sc7p5t_AO_RVT_TT_nldm_211120.lib
- asap7sc7p5t_INVBUF_RVT_TT_nldm_220122.lib
- asap7sc7p5t_OA_RVT_TT_nldm_211120.lib
- asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib
- asap7sc7p5t_SIMPLE_RVT_TT_nldm_211120.lib

Here are the sample steps:
````
## unzip .gz files
cd asap7sc7p5t_28/LIB/NLDM
gzip -d *.gz

## enviroment setup
export LD_LIBRARY_PATH=/cae/apps/data/synopsys-2021/lc/S-2021.06/linux64/nwtn/shlib:${LD_LIBRARY_PATH}
export TERM=xterm-basic
source /cae/apps/env/synopsys-lc_vS-2021.06

## start the library compiler
lc_shell

## complie the libraries
read_lib <name>.lib
write_lib <name> -format db

## exit the lc_shell
exit
````

### Trouble Shooting
Since it's open-source library, there are some unintentional bugs. For example, when you read and write the INVBUF library:
> lc_shell> read_lib asap7sc7p5t_INVBUF_RVT_TT_nldm_220122.lib
> 
> Technology library 'asap7sc7p5t_INVBUF_RVT_TT_nldm_211120' read successfully

However, you can see the dates are different. It will cause the error:
> lc_shell> write_lib asap7sc7p5t_INVBUF_RVT_TT_nldm_220122 -format db 
>
> Warning: The 'asap7sc7p5t_INVBUF_RVT_TT_nldm_220122' library has not been read in yet. (UIL-3)

Instead, you should do:
> lc_shell> write_lib asap7sc7p5t_INVBUF_RVT_TT_nldm_211120 -format db
> 
> Wrote the 'asap7sc7p5t_INVBUF_RVT_TT_nldm_211120' library to 'asap7sc7p5t_INVBUF_RVT_TT_nldm_211120.db' successfully


## 3. Synthesis
0. Return to MS_3_Synthesis directory and copy your verilog files into it.
Check the asap7 library path in file .synopsys_dc.setup is correct.

1. Setup the environment (once in each new terminal) 
````
export LD_LIBRARY_PATH=/cae/apps/data/synopsys-2021/lc/S-2021.06/linux64/nwtn/shlib:${LD_LIBRARY_PATH} 
export TERM=xterm-basic 
source /cae/apps/env/synopsys-dc_shell-vS-2021.06
````

2. Specify the source files in `./analyze.tcl`. The name of the top-level module is specified in `./syn_script.tcl` under the variable name `top`.

3. Check the design constraints in `./constraints.tcl`
   - Adjust the clock frequency, clock port name, reset port name if required

4. Make sure the name of the clock matches the one in your top script.

5. Make sure the name of the module matches the filename.

6. Run synthesis
````
dc_shell -f ./syn_script.tcl -output_log_file ./dc_output.txt
````

6. Check the reports in `./reports` directory in the following order:
   - `analyze.log`          - Reports syntactical errors in the input source files
   - `elaborate.log`        - Elaboration binds all the source files together to create the top level design
   - `link.log`             - Design is linked with all dependencies - any missing references are highlighted here
   - `check_design.*.log`   - Design is linked with all dependencies - any missing references are highlighted here
   - `synth.*.rpt`          - Area, power, timing information dumped

7. Outputs are dumped in `./outputs` directory
   - Use the netlist and SDC for APR

8. Take the *.vg from the output and simulate to verify the functioanlity of the design.



## 4. Simulation
The attached `top_compile_run.tcsh` is the complete script to specify the source files, testbench, compile, optimize and run the simulation.\
Specify your verilog files (including testbench) in line 29 of the script.\
Check your path to library verilog files in line 32 of the script.\
Check your testbench module name in the end of the script and `run.do`.\
Running `source top_compile_run.tcsh -i` opens up QuestaSim in an interactive mode and adds all signals to wave.\
Running `source top_compile_run.tcsh -c` runs QuestaSim in without GUI.