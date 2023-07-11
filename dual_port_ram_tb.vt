//testbench module
module dual_port_ram_tb; 
  reg clk;
  reg wr_en_A, wr_en_B;
  reg[7:0] data_A, data_B;
  reg[7:0] addr_A, addr_B;
  wire[7:0] q_A, q_B;
  
dual_port_ram DP(clk, data_A, data_B, wr_en_A, wr_en_B, addr_A, addr_B, q_A,     q_B);
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1, dual_port_ram_tb);
      clk=1'b0;
      forever#5 clk=~clk;
    end
  
  initial
    begin
      wr_en_A=1'b1;
      wr_en_B=1'b1;
      data_A=8'b10101011;
      addr_A=8'h98;
      data_B=8'b00000001;
      addr_B=8'h99;
      
      #20
      
      wr_en_A=1'b0;
      wr_en_B=1'b0;
      addr_A=8'h98;
      addr_B=8'h99;
      
      $monitor($time,"q_A=%b, q_B=%b", q_A, q_B);
      #10 $finish;
    end
endmodule
