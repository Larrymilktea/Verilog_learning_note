# Verilog_learning_note

以下是在MacOS，用VScode寫verilog的部分，前面要裝一些套件才能用。
參考這個文章可以把verilog的環境用好

## 下載參考資料
verilog 提示字：[在 VSCode 上使用 Verilog 開發並模擬硬體](https://hkt999.medium.com/在-vscode-上使用-verilog-開發並模擬硬體-f915735e47b0)

gtkwave：[Macbook M1使用vscode+iverilog+gtkwave实现Verilog代码的编译与运行](https://blog.csdn.net/qq_62561876/article/details/133901907)

三個步驟編譯執行：
1. `iverilog -o [你的檔案1.out][你的檔案.v]`
2. `vvp [你的檔案1.out]`
3. `gtkwave [你的檔案.vcd]`

### testfile 是我的模板，and_gate.v 和 tb.v 是一組的測試，test.v是自己一組把tb寫在裡面的

之後會把自己寫的東西放上來💪
