library verilog;
use verilog.vl_types.all;
entity pixel_gen is
    port(
        x_pxl           : in     vl_logic_vector(9 downto 0);
        y_pxl           : in     vl_logic_vector(9 downto 0);
        rgb             : out    vl_logic_vector(23 downto 0)
    );
end pixel_gen;
