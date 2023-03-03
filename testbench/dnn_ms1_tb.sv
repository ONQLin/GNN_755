module tb_dnn_ms1();

reg [6:0] x0, x1, x2, x3;
reg [4:0] w04, w14, w24, w34;
reg [4:0] w05, w15, w25, w35;
reg [4:0] w06, w16, w26, w36;
reg [4:0] w07, w17, w27, w37;
reg [4:0] w48, w58, w68, w78;
reg [4:0] w49, w59, w69, w79;

reg clk;

wire [19:0] out0, out1;
wire out0_ready, out1_ready;

reg in_ready;
// Top module
// Instantiation of top module
// Please replace the instantiation with the top module of your gate level model
// Look for 'test failed' in the message. If there is no such message then your output matches the golden outputs. 


dnn_top#(2) top(.x0(x0), .x1(x1), .x2(x2), .x3(x3), 
        .w04(w04), .w14(w14), .w24(w24), .w34(w34), 
        .w05(w05), .w15(w15), .w25(w25), .w35(w35),
        .w06(w06), .w16(w16), .w26(w26), .w36(w36),
        .w07(w07), .w17(w17), .w27(w27), .w37(w37),
        .w48(w48), .w58(w58), .w68(w68), .w78(w78),
        .w49(w49), .w59(w59), .w69(w69), .w79(w79),
        .out0(out0), .out1(out1),
        .in_ready(in_ready), .out0_ready(out0_ready), .out1_ready(out1_ready),
        .clk(clk));

initial begin

    clk = 0;
    in_ready = 1; 
    
    x0 = 7'b0000100;
    x1 = 7'b0000010;
    x2 = 7'b0000100;
    x3 = 7'b0000001;
    
    w04 = 7'b0000011;
    w14 = 7'b0000010;
    w24 = 7'b0001101;
    w34 = 7'b1111010;
    w05 = 7'b1110111;
    w15 = 7'b0000001;
    w25 = 7'b1111100;
    w35 = 7'b0001110;
    w06 = 7'b0000011;
    w16 = 7'b0000110;
    w26 = 7'b1110001;
    w36 = 7'b0001111;
    w07 = 7'b0001001;
    w17 = 7'b1110110;
    w27 = 7'b0001111;
    w37 = 7'b1110110;
    w48 = 7'b0000000;
    w58 = 7'b1111111;
    w68 = 7'b0000011;
    w78 = 7'b1110101;
    w49 = 7'b1110100;
    w59 = 7'b1110001;
    w69 = 7'b1110001;
    w79 = 7'b0000110;


    #40
    if (out0 == -20'd726)
        $display("-----------out0 is correct-----------------");
    else
        $display("-----------out0 is incorrect-----------");

    if (out1 == -20'd348)
        $display("-----------out1 is correct-----------");
    else
        $display("-----------out1 is incorrect-----------");


    if (out0 == -20'd726 && out1 == -20'd348)
        $display("*********** ALL TESTS PASSED *********");
    else
        $display("*********** SOME TEST(S) FAILED *********");


end


always
    #1 clk = !clk;


initial
    #100 $finish;


endmodule
