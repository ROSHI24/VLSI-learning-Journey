/*In this exercise, you are provided with the same module add16 as the previous exercise, which adds two 16-bit numbers with carry-in and produces a carry-out and 16-bit sum. You must instantiate three of these to build the carry-select adder, using your own 16-bit 2-to-1 multiplexer.
Connect the modules together as shown in the diagram below. The provided module add16 has the following declaration:
module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
*/
module top_module(input [31:0] a, input [31:0] b, output [31:0] sum);
    wire cout;
    wire [31:16]sum1;
    wire [31:16]sum2;
    add16 a1 ( a[15:0] , b[15:0] , 1'b0, sum[15:0],cout );
    add16 a2 ( a[31:16] , b[31:16] , 1'b0, sum1[31:16], );
    add16 a3 ( a[31:16] , b[31:16] , 1'b1, sum2[31:16], );
    assign sum[31:16]= cout?sum2:sum1;
endmodule
