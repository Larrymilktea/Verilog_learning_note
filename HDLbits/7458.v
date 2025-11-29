module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	wire and_2ab=p2a&p2b;
    wire and_2cd=p2c&p2d;
	assign p2y=and_2ab|and_2cd;
    wire and_3abc=p1a&p1b&p1c;
    wire and_3def=p1d&p1e&p1f;
    assign p1y=and_3abc|and_3def;
endmodule
