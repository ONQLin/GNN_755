// layer1: [x0, x1, x2, x3] * [[w04,w14,w24,w34],[w05,w15,w25,w35],[w06,w16,w26,w36],[w07,w17,w27,w37]] = [l10, l11, l12, l13]
// layer2: max(0, [l10, l11, l12, l13]) = [l20, l21, l22, l23]
// layer3: [l20, l21, l22, l23] * [[w48, w58, w68, w78],[w49, w59, w69, w79]] = [out0, out1]

// estimate registers: mid or last layer [l20, l21, l22, l23] or [out0, out1] can be more efficient
// hand-shaking signals: synchronous with registers

module dnn_top
(
    input signed[4:0] x0, x1, x2, x3, w04, w05, w06, w07, w14, w15, w16, w17, w24, w25, w26, w27, w34,          // weights and inputs
    w35, w36, w37, w48, w58, w49, w59, w68, w69, w78, w79,
    input in_ready,
    input clk,

    output logic[16:0] out0, out1,
    output logic out0_ready, out1_ready
);

    genvar i,j;
    wire signed[4:0] x[0:3] = '{x0, x1, x2, x3};                                        // inputs set as array for efficient coding
    wire signed[4:0] w1[0:3][0:3] = '{'{w04, w05, w06, w07},'{w14, w15, w16, w17},
    '{w24, w25, w26, w27},'{w34, w35, w36, w37}};                                       //the weights of layer1 w1[0][1]-->w05  w1[2][3]-->w27  (+4 for the 2nd index)
    wire signed[8:0] p1[0:3][0:3];                                                              // similar +4 for 2nd index p[0][1]-->p05

    generate           //get products of layer1
        for(i = 0; i < 4; i=i+1) begin
            for(j = 0; j < 4; j=j+1) begin
                assign p1[i][j] = x[i] * w1[i][j];
            end
        end
    endgenerate

    logic signed[10:0] s1[0:3];                                                            // results of 4 5 6 7 (index + 4)

    generate            // get sums of layer1
        for(i = 0; i < 4; i=i+1) begin
            always_ff @(posedge clk) begin
                if(in_ready)
                    s1[i] <= p1[0][i] + p1[1][i] + p1[2][i] + p1[3][i];
            end
        end
    endgenerate

    logic in_rdy_1
    always_ff @(posedge clk) begin
        in_rdy_1 <= in_ready;
    end

    logic signed[10:0] s_o1[0:3];    
    generate            // Relu
        for (i = 0; i < 4; i=i+1) begin
            always_ff @(posedge clk) begin
                if(in_rdy_1)
                    s_o1 <= (s1[i][10]) ? 10'd0 : {1'b0, si[i][9:0]};
            end
        end
    endgenerate



    wire signed[4:0] w2[0:3][0:1] = '{'{w48, w49},'{w58, w59},
    '{w68, w69},'{w78, w79}};                                                           //the weights of layer2 w2[0][1]-->w49  w2[2][0]-->w68  (+4 for the 1st index and +8 for the 2nd index)
    wire signed[13:0] p2[0:3][0:1];

    generate           //get products of layer1
        for(i = 0; i < 4; i=i+1) begin
            for(j = 0; j < 2; j=j+1) begin
                assign p2[i][j] = s_o1[i] * w2[i][j];
            end
        end
    endgenerate

    logic in_rdy_2
    always_ff @(posedge clk) begin
        in_rdy_2 <= in_rdy_1;
    end

    wire signed[16:0] s2[0:1];  

    generate            // get sums of layer1
        for(i = 0; i < 2; i=i+1) begin
            always_ff @(posedge clk) begin
                if(in_rdy_2)
                    s2[i] <= p2[0][i] + p2[1][i] + p2[2][i] + p2[3][i];
            end
        end
    endgenerate

    always_ff @(posedge clk) begin
        out0_ready <= in_rdy_2;
        out1_ready <= in_rdy_2;
    end

    assign {out0, out1} = {s2[0],s2[1]};    
    
endmodule