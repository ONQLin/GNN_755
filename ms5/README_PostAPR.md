# Milestone 5: Post-APR

## Export GDS
1. Go to MS4 directory, copy `asap7sc7p5t_28_R_220121a_scaled4x.gds` and `gds2.map` to `/asap7sc7p5t_28/GDS`
2. Add the folloing command to the end of 'apr_reference.tcl', then rerun the APR script.
````
setStreamOutMode -reset

streamOut outputs/top.gds.gz \
    -mapFile {./asap7sc7p5t_28/GDS/gds2.map} \
    -libName DesignLib \
    -uniquifyCellNames \
    -outputMacros \
    -stripes 1 \
    -mode ALL \
    -units 4000 \
    -reportFile ./report/top/gds_stream_out_final.rpt \
    -merge { ./asap7sc7p5t_28/GDS/asap7sc7p5t_28_R_220121a_scaled4x.gds}
````
3. The gds file will be in `outputs/top.gds.gz`, unzip it.


## Set up ASAP7 PDK
1. Create and go to MS5 directory.
2. Enter the following commands
````
# Change your Linux shell to csh
csh

mkdir asap7_rundir
cd asap7_rundir

setenv PDK_DIR /cae/apps/data/asap7PDK-2022/asap7PDK_r1p7

source $PDK_DIR/cdslib/setup/setup_asap7.csh 

setenv MGC_RVE_CTO_FILE $PWD/rve_vis_asap7.cto

source set_pdk_path.csh
````


## Import GDS into Virtuoso
1.  Connect to CAE machine with GUI: https://kb.wisc.edu/cae/106117
2.  In the terminal, open Virtuoso using the following commands
````
csh

cd MS5/asap7_rundir

source set_pdk_path.csh

virtuoso &
````
3. In Virtuoso:
- Click File -> Import -> Stream
- Select steam file in MS4/outputs/top.gds
- `Library` name can be customized, for example, `MS5`
- Select `Attchch Tech Libarary` as `asap7_TechLib`
- Click `Translate` and ignore the warnings
- Click File -> Open
- Select the library you created and the top cell
- Click OK
- You can find the layout of your design

4. Take a screenshot of the layout and submit it
