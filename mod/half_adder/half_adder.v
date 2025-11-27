module half_adder(a,b,sum,carry);
    input a,b;
    output sum,carry;
    wire a_i,b_i;
    assign a_i=!a;
    assign b_i=!b;
    xor(sum,a_i,b_i);
    and(carry,a_i,b_i);
endmodule
