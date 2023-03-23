module top ( x0_node0, x1_node0, x2_node0, x3_node0,
x0_node1, x1_node1, x2_node1, x3_node1,
x0_node2, x1_node2, x2_node2, x3_node2,
x0_node3, x1_node3, x2_node3, x3_node3,
w04, w14, w24, w34,
w05, w15, w25, w35,
w06, w16, w26, w36,
w07, w17, w27, w37,
w48, w58, w68, w78,
w49, w59, w69, w79,
out0_node0, out1_node0,
out0_node1, out1_node1,
out0_node2, out1_node2,
out0_node3, out1_node3,
in_ready,
out10_ready_node0, out11_ready_node0,
out10_ready_node1, out11_ready_node1,
out10_ready_node2, out11_ready_node2,
out10_ready_node3, out11_ready_node3,
clk);
input signed [4:0] x0_node0, x1_node0, x2_node0, x3_node0;
input signed [4:0] x0_node1, x1_node1, x2_node1, x3_node1;
input signed [4:0] x0_node2, x1_node2, x2_node2, x3_node2;
input signed [4:0] x0_node3, x1_node3, x2_node3, x3_node3;
input signed [4:0] w04, w14, w24, w34;
input signed [4:0] w05, w15, w25, w35;
input signed [4:0] w06, w16, w26, w36;
input signed [4:0] w07, w17, w27, w37;
input signed [4:0] w48, w58, w68, w78;
input signed [4:0] w49, w59, w69, w79;
input clk;
input in_ready;
output logic signed [20:0] out0_node0, out1_node0;
output logic signed [20:0] out0_node1, out1_node1;
output logic signed [20:0] out0_node2, out1_node2;
output logic signed [20:0] out0_node3, out1_node3;
output logic out10_ready_node0, out11_ready_node0;
output logic out10_ready_node1, out11_ready_node1;
output logic out10_ready_node2, out11_ready_node2;
output logic out10_ready_node3, out11_ready_node3;
//Implementation of GNN

// xnode[0][1] represents node0 input x1
wire signed[4:0] xnode[0:3][0:3] = '{'{x0_node0, x1_node0, x2_node0, x3_node0},'{x0_node1, x1_node1, x2_node1, x3_node1},
'{x0_node2, x1_node2, x2_node2, x3_node2},'{x0_node3, x1_node3, x2_node3, x3_node3}}; 
// x_in[0][1] refers to node 0 input x1
wire signed[6:0] x_in[0:3][0:3];          

// x0-3 input assignments after aggregation
genvar i;
generate;
      for(i = 0; i <= 3; i++) begin
            assign x_in[0][i] = xnode[0][i] + xnode[1][i] + xnode[2][i];  // node 0 : 0 + 1 2(neighbor)
      end
endgenerate

generate;
      for(i = 0; i <= 3; i++) begin
            assign x_in[1][i] = xnode[1][i] + xnode[0][i] + xnode[3][i];  // node 1 : 1 + 0 3(neighbor)
      end
endgenerate

generate;
      for(i = 0; i <= 3; i++) begin
            assign x_in[2][i] = xnode[2][i] + xnode[0][i] + xnode[3][i];  // node 2 : 2 + 0 3(neighbor)
      end
endgenerate

generate;
      for(i = 0; i <= 3; i++) begin
            assign x_in[3][i] = xnode[3][i] + xnode[1][i] + xnode[2][i];  // node 3 : 3 + 1 2(neighbor)
      end
endgenerate

wire signed[19:0] out[0:3][0:1];     //raw out out[0][1] refers to node0 out1

// aggregation of outputs
always_ff@(posedge clk) begin
      out0_node0 <= out[0][0] + out[1][0] + out[2][0];
      out1_node0 <= out[0][1] + out[1][1] + out[2][1];
end

always_ff @(posedge clk) begin
      out0_node1 <= out[1][0] + out[0][0] + out[3][0];
      out1_node1 <= out[1][1] + out[0][1] + out[3][1];
end

always_ff @(posedge clk) begin
      out0_node2 <= out[2][0] + out[0][0] + out[3][0];
      out1_node2 <= out[2][1] + out[0][1] + out[3][1];
end

always_ff @(posedge clk) begin
      out0_node3 <= out[3][0] + out[1][0] + out[2][0];
      out1_node3 <= out[3][1] + out[1][1] + out[2][1]; 
end

wire out_ready[0:3][0:1];     //raw outready out_ready[0][1] refers to node0 outready1

// aggregation of outputs ready
always_ff@(posedge clk) begin
      out10_ready_node0 <= out_ready[0][0] & out_ready[1][0] & out_ready[2][0]; 
      out11_ready_node0 <= out_ready[0][1] & out_ready[1][1] & out_ready[2][1]; 
end

always_ff @(posedge clk) begin
      out10_ready_node1 <= out_ready[1][0] & out_ready[0][0] & out_ready[3][0]; 
      out11_ready_node1 <= out_ready[1][1] & out_ready[0][1] & out_ready[3][1]; 
end

always_ff @(posedge clk) begin
      out10_ready_node2 <= out_ready[2][0] & out_ready[0][0] & out_ready[3][0]; 
      out11_ready_node2 <= out_ready[2][1] & out_ready[0][1] & out_ready[3][1]; 
end

always_ff @(posedge clk) begin
      out10_ready_node3 <= out_ready[3][0] & out_ready[1][0] & out_ready[2][0]; 
      out11_ready_node3 <= out_ready[3][1] & out_ready[1][1] & out_ready[2][1]; 
end

// neighbour:1 2
dnn_top #(.performance(0)) node0 (
      .x0            (x_in[0][0]),
      .x1            (x_in[0][1]),
      .x2            (x_in[0][2]),
      .x3            (x_in[0][3]),
      .w04           (w04),
      .w05           (w05),
      .w06           (w06),
      .w07           (w07),
      .w14           (w14),
      .w15           (w15),
      .w16           (w16),
      .w17           (w17),
      .w24           (w24),
      .w25           (w25),
      .w26           (w26),
      .w27           (w27),
      .w34           (w34),
      .w35           (w35),
      .w36           (w36),
      .w37           (w37),
      .w48           (w48),
      .w58           (w58),
      .w49           (w49),
      .w59           (w59),
      .w68           (w68),
      .w69           (w69),
      .w78           (w78),
      .w79           (w79),
      .in_ready      (in_ready),
      .clk           (clk),
      .out0          (out[0][0]),
      .out1          (out[0][1]),
      .out0_ready    (out_ready[0][0]),
      .out1_ready    (out_ready[0][1])
);

// neighbour:0 3
dnn_top #(.performance(0)) node1 (
      .x0            (x_in[1][0]),
      .x1            (x_in[1][1]),
      .x2            (x_in[1][2]),
      .x3            (x_in[1][3]),
      .w04           (w04),
      .w05           (w05),
      .w06           (w06),
      .w07           (w07),
      .w14           (w14),
      .w15           (w15),
      .w16           (w16),
      .w17           (w17),
      .w24           (w24),
      .w25           (w25),
      .w26           (w26),
      .w27           (w27),
      .w34           (w34),
      .w35           (w35),
      .w36           (w36),
      .w37           (w37),
      .w48           (w48),
      .w58           (w58),
      .w49           (w49),
      .w59           (w59),
      .w68           (w68),
      .w69           (w69),
      .w78           (w78),
      .w79           (w79),
      .in_ready      (in_ready),
      .clk           (clk),
      .out0          (out[1][0]),
      .out1          (out[1][1]),
      .out0_ready    (out_ready[1][0]),
      .out1_ready    (out_ready[1][1])
);

// neighbour:0 3
dnn_top #(.performance(0)) node2 (
      .x0            (x_in[2][0]),
      .x1            (x_in[2][1]),
      .x2            (x_in[2][2]),
      .x3            (x_in[2][3]),
      .w04           (w04),
      .w05           (w05),
      .w06           (w06),
      .w07           (w07),
      .w14           (w14),
      .w15           (w15),
      .w16           (w16),
      .w17           (w17),
      .w24           (w24),
      .w25           (w25),
      .w26           (w26),
      .w27           (w27),
      .w34           (w34),
      .w35           (w35),
      .w36           (w36),
      .w37           (w37),
      .w48           (w48),
      .w58           (w58),
      .w49           (w49),
      .w59           (w59),
      .w68           (w68),
      .w69           (w69),
      .w78           (w78),
      .w79           (w79),
      .in_ready      (in_ready),
      .clk           (clk),
      .out0          (out[2][0]),
      .out1          (out[2][1]),
      .out0_ready    (out_ready[2][0]),
      .out1_ready    (out_ready[2][1])
);

// neighbour:1 2
dnn_top #(.performance(0)) node3 (
      .x0            (x_in[3][0]),
      .x1            (x_in[3][1]),
      .x2            (x_in[3][2]),
      .x3            (x_in[3][3]),
      .w04           (w04),
      .w05           (w05),
      .w06           (w06),
      .w07           (w07),
      .w14           (w14),
      .w15           (w15),
      .w16           (w16),
      .w17           (w17),
      .w24           (w24),
      .w25           (w25),
      .w26           (w26),
      .w27           (w27),
      .w34           (w34),
      .w35           (w35),
      .w36           (w36),
      .w37           (w37),
      .w48           (w48),
      .w58           (w58),
      .w49           (w49),
      .w59           (w59),
      .w68           (w68),
      .w69           (w69),
      .w78           (w78),
      .w79           (w79),
      .in_ready      (in_ready),
      .clk           (clk),
      .out0          (out[3][0]),
      .out1          (out[3][1]),
      .out0_ready    (out_ready[3][0]),
      .out1_ready    (out_ready[3][1])
);





endmodule