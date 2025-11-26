`timescale 1ns/1ns
module mux2_tb;
    reg in_a,in_b,in_sel;
    wire out_out;
    mux2 uut(
        .a(in_a),
        .b(in_b),
        .sel(in_sel),
        .out(out_out)
    );

    initial begin
        $dumpfile("mux2_test.vcd");
        $dumpvars(0, mux2_tb);
    end
    initial begin
        in_a = 0; in_b = 0; in_sel = 0;
        #10 in_a = 1; in_b = 0; in_sel = 0;
        #10 in_a = 0; in_b = 1; in_sel = 0;
        #10 in_a = 1; in_b = 1; in_sel = 0;
        #10 in_a = 1; in_b = 0; in_sel = 1;
        #10 in_a = 0; in_b = 1; in_sel = 1;
        #10 in_a = 1; in_b = 1; in_sel = 1;
        #10 $finish;
    end
endmodule
