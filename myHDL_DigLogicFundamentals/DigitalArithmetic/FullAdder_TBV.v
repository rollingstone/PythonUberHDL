// File: FullAdder_TBV.v
// Generated by MyHDL 0.10
// Date: Tue Aug 21 12:52:16 2018


`timescale 1ns/10ps

module FullAdder_TBV (

);
// myHDL -> Verilog Testbench for module "FullAdder"


reg x1 = 0;
reg x2 = 0;
wire s;
wire c;
wire [7:0] x1TVals;
wire [7:0] x2TVals;
reg cin = 0;
wire [7:0] cinTVals;

assign x1TVals = 8'd15;
assign x2TVals = 8'd51;
assign cinTVals = 8'd85;


always @(x2, c, s, cin, x1) begin: FULLADDER_TBV_PRINT_DATA
    $write("%h", x1);
    $write(" ");
    $write("%h", x2);
    $write(" ");
    $write("%h", cin);
    $write(" ");
    $write("%h", s);
    $write(" ");
    $write("%h", c);
    $write("\n");
end



assign s = ((x1 ^ x2) ^ cin);
assign c = (((x1 & x2) | (x1 & cin)) | (x2 & cin));


initial begin: FULLADDER_TBV_STIMULES
    integer i;
    for (i=0; i<8; i=i+1) begin
        x1 <= x1TVals[i];
        x2 <= x2TVals[i];
        cin <= cinTVals[i];
        # 1;
    end
    $finish;
end

endmodule
