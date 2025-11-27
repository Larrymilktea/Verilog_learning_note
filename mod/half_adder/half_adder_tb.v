`timescale 1ns/1ns
module half_adder_tb;
    reg a1;
    reg b1;
    wire sum1;
    wire carry1;

    half_adder uut(
        .a(a1),
        .b(b1),
        .sum(sum1),
        .carry(carry1)
    );
    initial begin
        $dumpfile("half_adder_test.vcd");
        $dumpvars(0, half_adder_tb);
    end
    initial begin
        a1=0; b1=0;
        #20; a1=0;b1=1;
        #20; a1=1;b1=0;
        #20; a1=1;b1=1;
        #20; a1=0;b1=0;
    end
endmodule
