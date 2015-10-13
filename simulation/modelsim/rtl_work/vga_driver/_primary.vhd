library verilog;
use verilog.vl_types.all;
entity vga_driver is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        rgb             : out    vl_logic_vector(11 downto 0);
        href            : out    vl_logic;
        vsync           : out    vl_logic
    );
end vga_driver;
