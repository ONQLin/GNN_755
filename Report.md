# Report for the Power/Performance Estimations of GNN

## 1. Design Overview
For the RTL design, given the fact that deeper hidden layers have more bitwidth, which means more logic delay for multiplication and sum(), I added the DNN's flip flops stage with tendency to relieve deeper level's critical path. So as to realize performance/power comparison among different design option. I implement a RTL design of DNN with flexible bitwidth and flip flops stage insertion, which is shown in the MS1-MS5's submission. GNN designs in different frequency are implemented from behavioral to physical layout level. And finally they come to evaluation and comparison in this Milestone. 

## 2. Design Comparison by PT
From the reports_730 reports_883 and reports_970, which refers to the 2,4,full flip flop stages design. The required metrics are listed below:

| Design | Max Frequency(MHz) | Min Latency(ns) | Power(mW) | Energy(pJ) | EDAP(pJ ns-mm^2) |
| ------ | ------------------ | --------------- | --------- | ---------- | ---------------- |
| full-stages    | 970                | 1.389           | 0.000     | 0.000      | 0.000            |
| 4-stages       | 883                | 1.133           | 0.000     | 0.000      | 0.000            |
| 2-stages       | 730                | 1.031           | 0.000     | 0.000      | 0.000            |



## 3. Optimization and improved results