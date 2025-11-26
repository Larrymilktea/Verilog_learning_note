module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
	wire and1=a&b;
    wire and2=c&d;
    wire orgate=and1|and2;
    assign out=orgate;
    assign out_n=!orgate;
endmodule
