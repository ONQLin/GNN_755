module dnn_tb();

logic signed[4:0] x0, x1, x2, x3, w04, w05, w06, w07, w14, w15, w16, w17, w24, w25, w26, w27, w34,          // weights and inputs
    w35, w36, w37, w48, w58, w49, w59, w68, w69, w78, w79;

reg clk, in_ready;
logic signed[4:0] x[0:3] = {5'd0,5'd0,5'd0,5'd0};                                        // inputs set as array for efficient coding
logic signed[4:0] w1[0:3][0:3] = {'{default:'0},'{default:'0},'{default:'0},'{default:'0}};   
logic signed[4:0] w2[0:3][0:1] = {'{default:'0},'{default:'0},'{default:'0},'{default:'0}};

assign {x0, x1, x2, x3} = {x[0], x[1], x[2], x[3]};
assign {w04, w05, w06, w07} = {w1[0][0], w1[0][1], w1[0][2], w1[0][3]};
assign {w14, w15, w16, w17} = {w1[1][0], w1[1][1], w1[1][2], w1[1][3]};
assign {w24, w25, w26, w27} = {w1[2][0], w1[2][1], w1[2][2], w1[2][3]};
assign {w34, w35, w36, w37} = {w1[3][0], w1[3][1], w1[3][2], w1[3][3]};

assign {w48, w49} = {w2[0][0], w2[0][1]};
assign {w58, w59} = {w2[1][0], w2[1][1]};
assign {w68, w69} = {w2[2][0], w2[2][1]};
assign {w78, w79} = {w2[3][0], w2[3][1]};

wire signed[16:0] out0, out1;

dnn_top u_dnn_top (
      .x0            (x0),
      .x1            (x1),
      .x2            (x2),
      .x3            (x3),
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
      .out0          (out0),
      .out1          (out1),
      .out0_ready    (out0_ready),
      .out1_ready    (out1_ready)
);

parameter FILE_PATH_F = "/filespace/j/jlin445/ece755/GNN_755/testbench/dnn_input.txt";            //select your own file path
parameter FILE_PATH_O = "/filespace/j/jlin445/ece755/GNN_755/testbench/dnn_res.txt";
integer fid;
integer fid2;
int count = 0;

initial begin
      clk = 0;
      in_ready = 0;
      @(negedge clk);
      fid = $fopen(FILE_PATH_F, "w");
      fid2 = $fopen(FILE_PATH_O, "w");

      fork
            repeat(20) begin
                  @(posedge clk);
                  in_ready = 1;
                  $fdisplay(fid, "batch: %0d\n", count);
                  $fdisplay(fid, "input x display \n");
                  for(int i=0; i<4; i=i+1) begin
                        x[i] = $urandom_range(0,5'h1f);
                        $fdisplay(fid, "x%0d:   %0d\n", i, x[i]);
                  end
                  @(posedge clk)
                  $fdisplay(fid, "input w ly1 display \n");
                  for(int i=0; i<4; i=i+1) begin
                        for (int j = 0; j<4; j=j+1) begin
                              w1[i][j] = $urandom_range(0,5'h1f);
                              $fdisplay(fid, "w%0d%0d:   %0d\n", i, j+4, w1[i][j]); 
                        end
                  end
                  repeat(3) @(posedge clk);
                  $fdisplay(fid, "input w ly2 display \n");
                  for(int i=0; i<4; i=i+1) begin
                        for (int j = 0; j<2; j=j+1) begin
                              w2[i][j] = $urandom_range(0,5'h1f); 
                              $fdisplay(fid, "w%0d%0d:	%0d\n", i+4, j+8, w2[i][j]); 
                        end
                  end
                  in_ready = 0;
                  count++;
            end  

            while(1) begin : check_output
                  @(posedge out0_ready);
                  $fdisplay(fid2, "batch %0d output:\n", count); 
                  $fdisplay(fid2, "out0: %0d\n", out0); 
                  $fdisplay(fid2, "out1: %0d\n", out1); 
            end : check_output
            
      join_any

      disable check_output;
      $fclose(fid);
      $fclose(fid2);
      $stop;
end

always
      #10 clk = ~clk;


endmodule