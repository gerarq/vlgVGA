`timescale 1 ns/ 10 ps

module vga_sync_tb();
parameter T = 2;


reg clk;
reg reset;
wire href,vsync;
wire [11:0]rgb;
                         
vga_driver dut (
	.clk(clk),
	.rst(reset),
	.href(href),
	.vsync(vsync),
	.rgb(rgb)
);
initial begin                                                  
                                            
$display("Running testbench");
clk = 1'b1;
reset = 1'b0;
#25
reset = 1'b1;
#100000000
$display($time,"<<Finishing Simulation>>");
$stop;
$finish;
                   
end  

always begin
		#(T/2) clk = ~clk;
	end
		                                                
endmodule

