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

initial begin
      clk = 0;
      in_ready = 0;
      @(negedge clk);
      repeat(20) begin
            @(posedge clk);
            in_ready = 1;
            for(int i=0; i<4; i=i+1) begin
                  x[i] = $urandom_range(0,5'h1f);
            end
            for(int i=0; i<4; i=i+1) begin
                  for (int j = 0; j<4; j=j+1) begin
                        w1[i][j] = $urandom_range(0,5'h1f); 
                  end
            end
            for(int i=0; i<4; i=i+1) begin
                  for (int j = 0; j<2; j=j+1) begin
                        w2[i][j] = $urandom_range(0,5'h1f); 
                  end
            end
            @(posedge clk);
                  in_ready = 0;
      end
      $stop;
end

always
      #10 clk = ~clk;


endmodule