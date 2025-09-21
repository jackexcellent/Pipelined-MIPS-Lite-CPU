library verilog;
use verilog.vl_types.all;
entity barrel_shifter_32bit is
    port(
        inA             : in     vl_logic_vector(31 downto 0);
        inB             : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end barrel_shifter_32bit;
