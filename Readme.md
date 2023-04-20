# GNN VLSI IMPL

## Milestone 1: DNN RTL Verify
Question: "How is the input x and weights updated? if it is updated simutaneously, it may require to pipeline the weights."
"if the the inputs update by order like dnn_tb. It doesn't require resources in DNN"
"To ensure the highest throughput, maybe it requires to pipeline the weights"
"To ensure the area, I can just schedule the weights propogation and keep still"

## Milestone 2: GNN RTL Verify
Now assumed that this inference model is weight fixed.
the DNN's inputs (xi) are now able to configure (7 or 5 ...) because of aggregation of GNN
the DNN's pipeline is also configurable. performance = 2 means all operations are pipelined.
performance = 1 means that several of them are pipelined
Now the GNN can pass MS2's verification, which is functionally correct. input ready output ready timing is aligned on piazza.
The computation of GNN may requrie further verification.


## Milestone 3: DC Syn
Done, it is regular work according to the guide without coding with extra files. Please follow the Readme in ms3 if you want to play. I have established the impl of different performance configuration(3 stages and 6 stages in DNN). You can check that in syn_output, and I prefer the 3 stages one. They all pass the post-syn test by MS2. You can play with that and writing different constraints(clk) and check the synthesis report. Perhaps I will update 1 stage DNN to see the slower version's results.

There is now 3 configurations in DNN design: 1 stage; 3 stage; 6 stages
These three config make difference in both performance (inference throughput = freq and Syn area, power...). I think it can help us better trade off the design and find ways to optimize. BTW, both three configs have passed the tb in MS2.

## Milestone 4: APR
change the FP_TARGET to fit different Routing requirements in 714/870/1G design. Area's variation seems quite large after that without manually adjustment on layout. Anywany, the APR results are done after simple scripts automatic running.

## Milestone 5: Post-APR layout
Just to generate physical layout on Virtuoso. Just follow the Readme and go through it. However, I met with a undefined package problem which I dont know appropriate or not.

## Milestone 6: Post-APR layout
Go through readme. 870M design is now updated to 970M with PT reports. Further analysis reports can be done with reports' metrics. New optimization idea remains coming out. You can refer to the readme and figure out the 714 and 1G design with finding the maximum clk frequency.

### File Org:
each Milestone's tb and other materials will store at its own folder. ./testbench folder store some DIY files.
