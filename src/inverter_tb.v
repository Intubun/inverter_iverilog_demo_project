
`timescale 1ns/1ns
`default_nettype none

module inverter_tb();
reg [31:0] in;
wire [31:0] out;
inverter inverter_analysis(in, out);

initial
    begin
        in = 0;
        #10 in = 1;
        #10 in = 0;
        #10 in = 1;
        #10 in = 0;
        #10 in = 'hFFFFFFFF;
        #10 in = 0;

    end

initial
    begin
        $dumpfile("./analysis/inverter.vcd");
        $dumpvars(0, inverter_analysis);
    end


endmodule
