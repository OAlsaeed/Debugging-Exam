`timescale 1ns / 1ps



module tb_counter_4bit;

     logic clk;
     logic reset_n;
     logic load;
     logic [3:0] load_data;
     logic [3:0] count;
     
     
     counter_4bit2 uut(
     
      .clk(clk),
      .reset_n(reset_n),
      .load(load),
      .load_data(load_data),
      .count(count)       
     );

initial 
begin
clk =0;
reset_n=1;
load =0;
load_data=2;
forever #3 clk = ~clk;

    end
    
    initial 
    begin 
    #5
    reset_n =0;
    #10
    reset_n=0;
    #200
    load=1;
     
    
   end
    
    
endmodule
