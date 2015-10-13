library verilog;
use verilog.vl_types.all;
entity vga_sync is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        y_pxl           : out    vl_logic_vector(9 downto 0);
        x_pxl           : out    vl_logic_vector(9 downto 0);
        href            : out    vl_logic;
        vsync           : out    vl_logic
    );
end vga_sync;
