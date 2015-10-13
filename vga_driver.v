module vga_driver (
	input wire clk,
	input wire rst,
	output wire [11:0]rgb,
	output wire href, vsync
);

wire [9:0]y_pxl,x_pxl;

vga_sync vga_sync_dev (.clk(clk), .rst(rst), .y_pxl(y_pxl),.x_pxl(x_pxl),.href(href),.vsync(vsync));
pixel_gen pixel_gen_dev (.y_pxl(y_pxl),.x_pxl(x_pxl),.rgb(rgb), .rst(rst));

endmodule
