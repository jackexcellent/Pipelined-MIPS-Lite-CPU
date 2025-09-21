library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        SUB             : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        SLT             : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1)
    );
    port(
        dataOut         : out    vl_logic_vector(31 downto 0);
        dataA           : in     vl_logic_vector(31 downto 0);
        dataB           : in     vl_logic_vector(31 downto 0);
        \Signal\        : in     vl_logic_vector(2 downto 0);
        shamt           : in     vl_logic_vector(4 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SUB : constant is 1;
    attribute mti_svvh_generic_type of SLT : constant is 1;
end ALU;
