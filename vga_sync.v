module vga_sync (
input wire clk,
input wire rst,
output wire [9:0]y_pxl,x_pxl,
output reg href, vsync
);

reg clk_div;
reg [9:0]hcount,vcount;
localparam hmax = 10'd799, vmax = 10'd524;
always @(posedge clk) begin
		clk_div <= ~clk_div;
end

always @(posedge clk_div, negedge rst) begin 
	if (~rst) begin
		hcount <= 10'd0;
		vcount <= 10'd0;
	end else begin
		if(hcount < hmax) begin
			hcount <= hcount + 1'b1;
		end else if (hcount >= hmax) begin
			hcount <= 10'd0;
		end
		if(vcount < vmax && hcount==hmax) begin
			vcount <= vcount + 1'b1;
		end else if (vcount >= vmax) begin
			vcount <= 10'd0;
		end
	end
end

always @(posedge clk_div, negedge rst) begin
	if(~rst) begin
		href<=1'b0;
		vsync<=1'b0;
	end else begin
		if(hcount <= 10'd659 || hcount >= 10'd755) begin
			href<=1'b1;
		end else begin
			href<=1'b0;
		end
		if(vcount <= 10'd494 || vcount >= 10'd496) begin
			vsync<=1'b1;
		end else begin
			vsync<=1'b0;
		end
	end
end

assign y_pxl = (vcount <= 10'b0111011111) ? vcount: 10'b1111111111; //479
assign x_pxl = (hcount <= 10'b1001111111) ? hcount: 10'b1111111111; //639

endmodule