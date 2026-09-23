/*An adder-subtractor can be built from an adder by optionally negating one of the inputs, which is equivalent to inverting the input then adding 1. The net result is a circuit that can do two operations: (a + b + 0) and (a + ~b + 1). See Wikipedia if you want a more detailed explanation of how this circuit works.

Build the adder-subtractor below.
Platform: HDLBits*/

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);	wire cout,cout1;
    wire[31:0]b_inv;
    assign b_inv[31:0]= b^{32{sub}};
    add16 a1 ( a[15:0] , b_inv[15:0], sub, sum [15:0],  cout );
    add16 a2 ( a[31:16], b_inv[31:16], cout,sum[31:16],  cout1 );

endmodule
