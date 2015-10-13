library verilog;
use verilog.vl_types.all;
entity vga_sync_tb is
    generic(
        T               : integer := 2
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of T : constant is 1;
end vga_sync_tb;
