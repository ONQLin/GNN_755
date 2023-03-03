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



### File Org:
each Milestone's tb and other materials will store at its own folder. ./testbench folder store some DIY files.
