//=======================================================
//  and_gate.v
//  被測模組 (Design Under Test)
//=======================================================

module and_gate (
    input  a,
    input  b,
    output y
);
  assign y = a & b;   // AND 邏輯運算
endmodule
