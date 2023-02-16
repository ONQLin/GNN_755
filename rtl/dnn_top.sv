// layer1: [x0, x1, x2, x3] * [[w04,w14,w24,w34],[w05,w15,w25,w35],[w06,w16,w26,w36],[w07,w17,w27,w37]] = [l10, l11, l12, l13]
// layer2: max(0, [l10, l11, l12, l13]) = [l20, l21, l22, l23]
// layer3: [l20, l21, l22, l23] * [[w48, w58, w68, w78],[w49, w59, w69, w79]] = [out0, out1]

// estimate registers: mid or last layer [l20, l21, l22, l23] or [out0, out1] can be more efficient
// hand-shaking signals: synchronous with registers

module dnn_top(
    input signed[4:0] x0, x1, x2, x3, w04, w05, w06, w07, w14, w15, w16, w17, w24, w25, w26, w27, w34,          // weights and inputs
    w35, w36, w37, w48, w58, w49, w59, w68, w69, w78, w79,
    input in_ready,
    input clk,

    output[16:0] out0, out1,
    output out0_ready, out1_ready
);


    
endmodule