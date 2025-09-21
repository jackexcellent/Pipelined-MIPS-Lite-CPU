library verilog;
use verilog.vl_types.all;
entity mux2 is
    port(
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        sel             : in     vl_logic;
        \out\           : out    vl_logic
    );
end mux2;
