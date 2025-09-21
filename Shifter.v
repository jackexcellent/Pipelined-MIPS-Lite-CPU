`timescale 1ns/1ns
module barrel_shifter_32bit (inA, inB, out);
    input  [31:0] inA;
    input  [4:0] inB;
    output [31:0] out;
    wire   [31:0] w,x,y,z; 

//1 bit shift left
mux2  ins_00 (.in0(inA[0]),.in1(1'b0),.sel(inB[0]),.out(w[0]));
mux2  ins_01 (.in0(inA[1]),.in1(inA[0]),.sel(inB[0]),.out(w[1]));
mux2  ins_02 (.in0(inA[2]),.in1(inA[1]),.sel(inB[0]),.out(w[2]));
mux2  ins_03 (.in0(inA[3]),.in1(inA[2]),.sel(inB[0]),.out(w[3]));
mux2  ins_04 (.in0(inA[4]),.in1(inA[3]),.sel(inB[0]),.out(w[4]));
mux2  ins_05 (.in0(inA[5]),.in1(inA[4]),.sel(inB[0]),.out(w[5]));
mux2  ins_06 (.in0(inA[6]),.in1(inA[5]),.sel(inB[0]),.out(w[6]));
mux2  ins_07 (.in0(inA[7]),.in1(inA[6]),.sel(inB[0]),.out(w[7]));
mux2  ins_08 (.in0(inA[8]),.in1(inA[7]),.sel(inB[0]),.out(w[8]));
mux2  ins_09 (.in0(inA[9]),.in1(inA[8]),.sel(inB[0]),.out(w[9]));
mux2  ins_010 (.in0(inA[10]),.in1(inA[9]),.sel(inB[0]),.out(w[10]));
mux2  ins_011 (.in0(inA[11]),.in1(inA[10]),.sel(inB[0]),.out(w[11]));
mux2  ins_012 (.in0(inA[12]),.in1(inA[11]),.sel(inB[0]),.out(w[12]));
mux2  ins_013 (.in0(inA[13]),.in1(inA[12]),.sel(inB[0]),.out(w[13]));
mux2  ins_014 (.in0(inA[14]),.in1(inA[13]),.sel(inB[0]),.out(w[14]));
mux2  ins_015 (.in0(inA[15]),.in1(inA[14]),.sel(inB[0]),.out(w[15]));
mux2  ins_016 (.in0(inA[16]),.in1(inA[15]),.sel(inB[0]),.out(w[16]));
mux2  ins_017 (.in0(inA[17]),.in1(inA[16]),.sel(inB[0]),.out(w[17]));
mux2  ins_018 (.in0(inA[18]),.in1(inA[17]),.sel(inB[0]),.out(w[18]));
mux2  ins_019 (.in0(inA[19]),.in1(inA[18]),.sel(inB[0]),.out(w[19]));
mux2  ins_020 (.in0(inA[20]),.in1(inA[19]),.sel(inB[0]),.out(w[20]));
mux2  ins_021 (.in0(inA[21]),.in1(inA[20]),.sel(inB[0]),.out(w[21]));
mux2  ins_022 (.in0(inA[22]),.in1(inA[21]),.sel(inB[0]),.out(w[22]));
mux2  ins_023 (.in0(inA[23]),.in1(inA[22]),.sel(inB[0]),.out(w[23]));
mux2  ins_024 (.in0(inA[24]),.in1(inA[23]),.sel(inB[0]),.out(w[24]));
mux2  ins_025 (.in0(inA[25]),.in1(inA[24]),.sel(inB[0]),.out(w[25]));
mux2  ins_026 (.in0(inA[26]),.in1(inA[25]),.sel(inB[0]),.out(w[26]));
mux2  ins_027 (.in0(inA[27]),.in1(inA[26]),.sel(inB[0]),.out(w[27]));
mux2  ins_028 (.in0(inA[28]),.in1(inA[27]),.sel(inB[0]),.out(w[28]));
mux2  ins_029 (.in0(inA[29]),.in1(inA[28]),.sel(inB[0]),.out(w[29]));
mux2  ins_030 (.in0(inA[30]),.in1(inA[29]),.sel(inB[0]),.out(w[30]));
mux2  ins_031 (.in0(inA[31]),.in1(inA[30]),.sel(inB[0]),.out(w[31]));


//2 bit shift left
mux2  ins_10 (.in0(w[0]),.in1(1'b0),.sel(inB[1]),.out(x[0]));
mux2  ins_11 (.in0(w[1]),.in1(1'b0),.sel(inB[1]),.out(x[1]));
mux2  ins_12 (.in0(w[2]),.in1(w[0]),.sel(inB[1]),.out(x[2]));
mux2  ins_13 (.in0(w[3]),.in1(w[1]),.sel(inB[1]),.out(x[3]));
mux2  ins_14 (.in0(w[4]),.in1(w[2]),.sel(inB[1]),.out(x[4]));
mux2  ins_15 (.in0(w[5]),.in1(w[3]),.sel(inB[1]),.out(x[5]));
mux2  ins_16 (.in0(w[6]),.in1(w[4]),.sel(inB[1]),.out(x[6]));
mux2  ins_17 (.in0(w[7]),.in1(w[5]),.sel(inB[1]),.out(x[7]));
mux2  ins_18 (.in0(w[8]),.in1(w[6]),.sel(inB[1]),.out(x[8]));
mux2  ins_19 (.in0(w[9]),.in1(w[7]),.sel(inB[1]),.out(x[9]));
mux2  ins_110 (.in0(w[10]),.in1(w[8]),.sel(inB[1]),.out(x[10]));
mux2  ins_111 (.in0(w[11]),.in1(w[9]),.sel(inB[1]),.out(x[11]));
mux2  ins_112 (.in0(w[12]),.in1(w[10]),.sel(inB[1]),.out(x[12]));
mux2  ins_113 (.in0(w[13]),.in1(w[11]),.sel(inB[1]),.out(x[13]));
mux2  ins_114 (.in0(w[14]),.in1(w[12]),.sel(inB[1]),.out(x[14]));
mux2  ins_115 (.in0(w[15]),.in1(w[13]),.sel(inB[1]),.out(x[15]));
mux2  ins_116 (.in0(w[16]),.in1(w[14]),.sel(inB[1]),.out(x[16]));
mux2  ins_117 (.in0(w[17]),.in1(w[15]),.sel(inB[1]),.out(x[17]));
mux2  ins_118 (.in0(w[18]),.in1(w[16]),.sel(inB[1]),.out(x[18]));
mux2  ins_119 (.in0(w[19]),.in1(w[17]),.sel(inB[1]),.out(x[19]));
mux2  ins_120 (.in0(w[20]),.in1(w[18]),.sel(inB[1]),.out(x[20]));
mux2  ins_121 (.in0(w[21]),.in1(w[19]),.sel(inB[1]),.out(x[21]));
mux2  ins_122 (.in0(w[22]),.in1(w[20]),.sel(inB[1]),.out(x[22]));
mux2  ins_123 (.in0(w[23]),.in1(w[21]),.sel(inB[1]),.out(x[23]));
mux2  ins_124 (.in0(w[24]),.in1(w[22]),.sel(inB[1]),.out(x[24]));
mux2  ins_125 (.in0(w[25]),.in1(w[23]),.sel(inB[1]),.out(x[25]));
mux2  ins_126 (.in0(w[26]),.in1(w[24]),.sel(inB[1]),.out(x[26]));
mux2  ins_127 (.in0(w[27]),.in1(w[25]),.sel(inB[1]),.out(x[27]));
mux2  ins_128 (.in0(w[28]),.in1(w[26]),.sel(inB[1]),.out(x[28]));
mux2  ins_129 (.in0(w[29]),.in1(w[27]),.sel(inB[1]),.out(x[29]));
mux2  ins_130 (.in0(w[30]),.in1(w[28]),.sel(inB[1]),.out(x[30]));
mux2  ins_131 (.in0(w[31]),.in1(w[29]),.sel(inB[1]),.out(x[31]));


//4 bit shift left
mux2  ins_20 (.in0(x[0]),.in1(1'b0),.sel(inB[2]),.out(y[0]));
mux2  ins_21 (.in0(x[1]),.in1(1'b0),.sel(inB[2]),.out(y[1]));
mux2  ins_22 (.in0(x[2]),.in1(1'b0),.sel(inB[2]),.out(y[2]));
mux2  ins_23 (.in0(x[3]),.in1(x[0]),.sel(inB[2]),.out(y[3]));
mux2  ins_24 (.in0(x[4]),.in1(x[1]),.sel(inB[2]),.out(y[4]));
mux2  ins_25 (.in0(x[5]),.in1(x[2]),.sel(inB[2]),.out(y[5]));
mux2  ins_26 (.in0(x[6]),.in1(x[3]),.sel(inB[2]),.out(y[6]));
mux2  ins_27 (.in0(x[7]),.in1(x[4]),.sel(inB[2]),.out(y[7]));
mux2  ins_28 (.in0(x[8]),.in1(x[5]),.sel(inB[2]),.out(y[8]));
mux2  ins_29 (.in0(x[9]),.in1(x[6]),.sel(inB[2]),.out(y[9]));
mux2  ins_210 (.in0(x[10]),.in1(x[7]),.sel(inB[2]),.out(y[10]));
mux2  ins_211 (.in0(x[11]),.in1(x[8]),.sel(inB[2]),.out(y[11]));
mux2  ins_212 (.in0(x[12]),.in1(x[9]),.sel(inB[2]),.out(y[12]));
mux2  ins_213 (.in0(x[13]),.in1(x[10]),.sel(inB[2]),.out(y[13]));
mux2  ins_214 (.in0(x[14]),.in1(x[11]),.sel(inB[2]),.out(y[14]));
mux2  ins_215 (.in0(x[15]),.in1(x[12]),.sel(inB[2]),.out(y[15]));
mux2  ins_216 (.in0(x[16]),.in1(x[13]),.sel(inB[2]),.out(y[16]));
mux2  ins_217 (.in0(x[17]),.in1(x[14]),.sel(inB[2]),.out(y[17]));
mux2  ins_218 (.in0(x[18]),.in1(x[15]),.sel(inB[2]),.out(y[18]));
mux2  ins_219 (.in0(x[19]),.in1(x[16]),.sel(inB[2]),.out(y[19]));
mux2  ins_220 (.in0(x[20]),.in1(x[17]),.sel(inB[2]),.out(y[20]));
mux2  ins_221 (.in0(x[21]),.in1(x[18]),.sel(inB[2]),.out(y[21]));
mux2  ins_222 (.in0(x[22]),.in1(x[19]),.sel(inB[2]),.out(y[22]));
mux2  ins_223 (.in0(x[23]),.in1(x[20]),.sel(inB[2]),.out(y[23]));
mux2  ins_224 (.in0(x[24]),.in1(x[21]),.sel(inB[2]),.out(y[24]));
mux2  ins_225 (.in0(x[25]),.in1(x[22]),.sel(inB[2]),.out(y[25]));
mux2  ins_226 (.in0(x[26]),.in1(x[23]),.sel(inB[2]),.out(y[26]));
mux2  ins_227 (.in0(x[27]),.in1(x[24]),.sel(inB[2]),.out(y[27]));
mux2  ins_228 (.in0(x[28]),.in1(x[25]),.sel(inB[2]),.out(y[28]));
mux2  ins_229 (.in0(x[29]),.in1(x[26]),.sel(inB[2]),.out(y[29]));
mux2  ins_230 (.in0(x[30]),.in1(x[27]),.sel(inB[2]),.out(y[30]));
mux2  ins_231 (.in0(x[31]),.in1(x[28]),.sel(inB[2]),.out(y[31]));

//8 bit shift left

mux2  ins_30 (.in0(y[0]),.in1(1'b0),.sel(inB[3]),.out(z[0]));
mux2  ins_31 (.in0(y[1]),.in1(1'b0),.sel(inB[3]),.out(z[1]));
mux2  ins_32 (.in0(y[2]),.in1(1'b0),.sel(inB[3]),.out(z[2]));
mux2  ins_33 (.in0(y[3]),.in1(1'b0),.sel(inB[3]),.out(z[3]));
mux2  ins_34 (.in0(y[4]),.in1(y[0]),.sel(inB[3]),.out(z[4]));
mux2  ins_35 (.in0(y[5]),.in1(y[1]),.sel(inB[3]),.out(z[5]));
mux2  ins_36 (.in0(y[6]),.in1(y[2]),.sel(inB[3]),.out(z[6]));
mux2  ins_37 (.in0(y[7]),.in1(y[3]),.sel(inB[3]),.out(z[7]));
mux2  ins_38 (.in0(y[8]),.in1(y[4]),.sel(inB[3]),.out(z[8]));
mux2  ins_39 (.in0(y[9]),.in1(y[5]),.sel(inB[3]),.out(z[9]));
mux2  ins_310 (.in0(y[10]),.in1(y[6]),.sel(inB[3]),.out(z[10]));
mux2  ins_311 (.in0(y[11]),.in1(y[7]),.sel(inB[3]),.out(z[11]));
mux2  ins_312 (.in0(y[12]),.in1(y[8]),.sel(inB[3]),.out(z[12]));
mux2  ins_313 (.in0(y[13]),.in1(y[9]),.sel(inB[3]),.out(z[13]));
mux2  ins_314 (.in0(y[14]),.in1(y[10]),.sel(inB[3]),.out(z[14]));
mux2  ins_315 (.in0(y[15]),.in1(y[11]),.sel(inB[3]),.out(z[15]));
mux2  ins_316 (.in0(y[16]),.in1(y[12]),.sel(inB[3]),.out(z[16]));
mux2  ins_317 (.in0(y[17]),.in1(y[13]),.sel(inB[3]),.out(z[17]));
mux2  ins_318 (.in0(y[18]),.in1(y[14]),.sel(inB[3]),.out(z[18]));
mux2  ins_319 (.in0(y[19]),.in1(y[15]),.sel(inB[3]),.out(z[19]));
mux2  ins_320 (.in0(y[20]),.in1(y[16]),.sel(inB[3]),.out(z[20]));
mux2  ins_321 (.in0(y[21]),.in1(y[17]),.sel(inB[3]),.out(z[21]));
mux2  ins_322 (.in0(y[22]),.in1(y[18]),.sel(inB[3]),.out(z[22]));
mux2  ins_323 (.in0(y[23]),.in1(y[19]),.sel(inB[3]),.out(z[23]));
mux2  ins_324 (.in0(y[24]),.in1(y[20]),.sel(inB[3]),.out(z[24]));
mux2  ins_325 (.in0(y[25]),.in1(y[21]),.sel(inB[3]),.out(z[25]));
mux2  ins_326 (.in0(y[26]),.in1(y[22]),.sel(inB[3]),.out(z[26]));
mux2  ins_327 (.in0(y[27]),.in1(y[23]),.sel(inB[3]),.out(z[27]));
mux2  ins_328 (.in0(y[28]),.in1(y[24]),.sel(inB[3]),.out(z[28]));
mux2  ins_329 (.in0(y[29]),.in1(y[25]),.sel(inB[3]),.out(z[29]));
mux2  ins_330 (.in0(y[30]),.in1(y[26]),.sel(inB[3]),.out(z[30]));
mux2  ins_331 (.in0(y[31]),.in1(y[27]),.sel(inB[3]),.out(z[31]));


//16 bit shift left

mux2  ins_40 (.in0(z[0]),.in1(1'b0),.sel(inB[4]),.out(out[0]));
mux2  ins_41 (.in0(z[1]),.in1(1'b0),.sel(inB[4]),.out(out[1]));
mux2  ins_42 (.in0(z[2]),.in1(1'b0),.sel(inB[4]),.out(out[2]));
mux2  ins_43 (.in0(z[3]),.in1(1'b0),.sel(inB[4]),.out(out[3]));
mux2  ins_44 (.in0(z[4]),.in1(1'b0),.sel(inB[4]),.out(out[4]));
mux2  ins_45 (.in0(z[5]),.in1(z[0]),.sel(inB[4]),.out(out[5]));
mux2  ins_46 (.in0(z[6]),.in1(z[1]),.sel(inB[4]),.out(out[6]));
mux2  ins_47 (.in0(z[7]),.in1(z[2]),.sel(inB[4]),.out(out[7]));
mux2  ins_48 (.in0(z[8]),.in1(z[3]),.sel(inB[4]),.out(out[8]));
mux2  ins_49 (.in0(z[9]),.in1(z[4]),.sel(inB[4]),.out(out[9]));
mux2  ins_410 (.in0(z[10]),.in1(z[5]),.sel(inB[4]),.out(out[10]));
mux2  ins_411 (.in0(z[11]),.in1(z[6]),.sel(inB[4]),.out(out[11]));
mux2  ins_412 (.in0(z[12]),.in1(z[7]),.sel(inB[4]),.out(out[12]));
mux2  ins_413 (.in0(z[13]),.in1(z[8]),.sel(inB[4]),.out(out[13]));
mux2  ins_414 (.in0(z[14]),.in1(z[9]),.sel(inB[4]),.out(out[14]));
mux2  ins_415 (.in0(z[15]),.in1(z[10]),.sel(inB[4]),.out(out[15]));
mux2  ins_416 (.in0(z[16]),.in1(z[11]),.sel(inB[4]),.out(out[16]));
mux2  ins_417 (.in0(z[17]),.in1(z[12]),.sel(inB[4]),.out(out[17]));
mux2  ins_418 (.in0(z[18]),.in1(z[13]),.sel(inB[4]),.out(out[18]));
mux2  ins_419 (.in0(z[19]),.in1(z[14]),.sel(inB[4]),.out(out[19]));
mux2  ins_420 (.in0(z[20]),.in1(z[15]),.sel(inB[4]),.out(out[20]));
mux2  ins_421 (.in0(z[21]),.in1(z[16]),.sel(inB[4]),.out(out[21]));
mux2  ins_422 (.in0(z[22]),.in1(z[17]),.sel(inB[4]),.out(out[22]));
mux2  ins_423 (.in0(z[23]),.in1(z[18]),.sel(inB[4]),.out(out[23]));
mux2  ins_424 (.in0(z[24]),.in1(z[19]),.sel(inB[4]),.out(out[24]));
mux2  ins_425 (.in0(z[25]),.in1(z[20]),.sel(inB[4]),.out(out[25]));
mux2  ins_426 (.in0(z[26]),.in1(z[21]),.sel(inB[4]),.out(out[26]));
mux2  ins_427 (.in0(z[27]),.in1(z[22]),.sel(inB[4]),.out(out[27]));
mux2  ins_428 (.in0(z[28]),.in1(z[23]),.sel(inB[4]),.out(out[28]));
mux2  ins_429 (.in0(z[29]),.in1(z[24]),.sel(inB[4]),.out(out[29]));
mux2  ins_430 (.in0(z[30]),.in1(z[25]),.sel(inB[4]),.out(out[30]));
mux2  ins_431 (.in0(z[31]),.in1(z[26]),.sel(inB[4]),.out(out[31]));

endmodule


module mux2( in0, in1, sel, out );
    input   sel, in0, in1;
    output  out;

    assign out = sel ? in1 : in0;
endmodule
