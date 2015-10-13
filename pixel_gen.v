module pixel_gen (
input wire rst,
input wire [9:0]x_pxl,y_pxl,
output wire [11:0]rgb
);

assign rgb = (&x_pxl ) ? {12{1'b0}} : {4'b1111,{4{1'b0}},4'b0000};

endmodule