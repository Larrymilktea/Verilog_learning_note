//=======================================================
//  tb.v
//  測試平台 (Testbench for AND Gate)
//=======================================================

`timescale 1ns/1ps

module tb;
  reg a, b;     // 輸入訊號
  wire y;       // 輸出訊號 (觀察對象)

  // 例化被測模組
  and_gate uut (
    .a(a),
    .b(b),
    .y(y)
  );

  // 產生波形輸出
  initial begin
    $dumpfile("test.vcd");    // 指定波形檔名
    $dumpvars(0, tb);         // 記錄 tb 裡所有訊號
  end

  // 測試刺激 (stimulus)
  initial begin
    a = 0; b = 0;
    #10 a = 1; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 1;
    #10 $finish;
  end
endmodule
