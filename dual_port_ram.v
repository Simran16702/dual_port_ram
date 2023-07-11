//design module
module dual_port_ram(clk, data_A, data_B, wr_en_A, wr_en_B, addr_A, addr_B, q_A, q_B);
  input clk; //clock
  input [7:0] data_A, data_B; //8 bit data bus
  input [7:0] addr_A, addr_B; //8 bit address bus
  input wr_en_A, wr_en_B;     //enable write
  output reg[7:0] q_A, q_B;   //output data
  
  reg[7:0] ram[255:0];        //256 bit x 8 bit RAM
  
  always @ (posedge clk)
    begin
      if(wr_en_A)             //high logic means enable write
        ram[addr_A]<= data_A;
      else
        q_A<= ram[addr_A];    //read data from RAM
    end
  
  always @ (posedge clk)
    begin
      if(wr_en_B)
        ram[addr_B]<= data_B;
      else
        q_B<= ram[addr_B];
    end
endmodule
