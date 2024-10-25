module dot_10_pipeline(
  input wire clk,
  input wire [31:0] TestBlock__A_op0,
  input wire [31:0] TestBlock__B_op0,
  input wire [31:0] TestBlock__A_op1,
  input wire [31:0] TestBlock__B_op1,
  input wire [31:0] TestBlock__A_op2,
  input wire [31:0] TestBlock__B_op2,
  input wire [31:0] TestBlock__A_op3,
  input wire [31:0] TestBlock__B_op3,
  input wire [31:0] TestBlock__A_op4,
  input wire [31:0] TestBlock__B_op4,
  input wire [31:0] TestBlock__A_op5,
  input wire [31:0] TestBlock__B_op5,
  input wire [31:0] TestBlock__A_op6,
  input wire [31:0] TestBlock__B_op6,
  input wire [31:0] TestBlock__A_op7,
  input wire [31:0] TestBlock__B_op7,
  input wire [31:0] TestBlock__A_op8,
  input wire [31:0] TestBlock__B_op8,
  input wire [31:0] TestBlock__A_op9,
  input wire [31:0] TestBlock__B_op9,
  output wire [52:0] out
);
  // lint_off SIGNED_TYPE
  // lint_off MULTIPLY
  function automatic [31:0] smul32b_32b_x_32b (input reg [31:0] lhs, input reg [31:0] rhs);
    reg signed [31:0] signed_lhs;
    reg signed [31:0] signed_rhs;
    reg signed [31:0] signed_result;
    begin
      signed_lhs = $signed(lhs);
      signed_rhs = $signed(rhs);
      signed_result = signed_lhs * signed_rhs;
      smul32b_32b_x_32b = $unsigned(signed_result);
    end
  endfunction
  // lint_on MULTIPLY
  // lint_on SIGNED_TYPE

  // ===== Pipe stage 0:

  // Registers for pipe stage 0:
  reg [31:0] p0_TestBlock__A_op0;
  reg [31:0] p0_TestBlock__B_op0;
  reg [31:0] p0_TestBlock__A_op1;
  reg [31:0] p0_TestBlock__B_op1;
  reg [31:0] p0_TestBlock__A_op2;
  reg [31:0] p0_TestBlock__B_op2;
  reg [31:0] p0_TestBlock__A_op3;
  reg [31:0] p0_TestBlock__B_op3;
  reg [31:0] p0_TestBlock__A_op4;
  reg [31:0] p0_TestBlock__B_op4;
  reg [31:0] p0_TestBlock__A_op5;
  reg [31:0] p0_TestBlock__B_op5;
  reg [31:0] p0_TestBlock__A_op6;
  reg [31:0] p0_TestBlock__B_op6;
  reg [31:0] p0_TestBlock__A_op7;
  reg [31:0] p0_TestBlock__B_op7;
  reg [31:0] p0_TestBlock__A_op8;
  reg [31:0] p0_TestBlock__B_op8;
  reg [31:0] p0_TestBlock__A_op9;
  reg [31:0] p0_TestBlock__B_op9;
  always_ff @ (posedge clk) begin
    p0_TestBlock__A_op0 <= TestBlock__A_op0;
    p0_TestBlock__B_op0 <= TestBlock__B_op0;
    p0_TestBlock__A_op1 <= TestBlock__A_op1;
    p0_TestBlock__B_op1 <= TestBlock__B_op1;
    p0_TestBlock__A_op2 <= TestBlock__A_op2;
    p0_TestBlock__B_op2 <= TestBlock__B_op2;
    p0_TestBlock__A_op3 <= TestBlock__A_op3;
    p0_TestBlock__B_op3 <= TestBlock__B_op3;
    p0_TestBlock__A_op4 <= TestBlock__A_op4;
    p0_TestBlock__B_op4 <= TestBlock__B_op4;
    p0_TestBlock__A_op5 <= TestBlock__A_op5;
    p0_TestBlock__B_op5 <= TestBlock__B_op5;
    p0_TestBlock__A_op6 <= TestBlock__A_op6;
    p0_TestBlock__B_op6 <= TestBlock__B_op6;
    p0_TestBlock__A_op7 <= TestBlock__A_op7;
    p0_TestBlock__B_op7 <= TestBlock__B_op7;
    p0_TestBlock__A_op8 <= TestBlock__A_op8;
    p0_TestBlock__B_op8 <= TestBlock__B_op8;
    p0_TestBlock__A_op9 <= TestBlock__A_op9;
    p0_TestBlock__B_op9 <= TestBlock__B_op9;
  end

  // ===== Pipe stage 1:
  wire [31:0] p1_smul_1138_comb;
  wire [31:0] p1_smul_1139_comb;
  wire [31:0] p1_smul_1140_comb;
  wire [31:0] p1_smul_1141_comb;
  wire [31:0] p1_smul_1142_comb;
  wire [31:0] p1_smul_1143_comb;
  wire [31:0] p1_smul_1144_comb;
  wire [31:0] p1_smul_1145_comb;
  wire [31:0] p1_smul_1146_comb;
  wire [31:0] p1_smul_1147_comb;
  assign p1_smul_1138_comb = smul32b_32b_x_32b(p0_TestBlock__A_op0, p0_TestBlock__B_op0);
  assign p1_smul_1139_comb = smul32b_32b_x_32b(p0_TestBlock__A_op1, p0_TestBlock__B_op1);
  assign p1_smul_1140_comb = smul32b_32b_x_32b(p0_TestBlock__A_op2, p0_TestBlock__B_op2);
  assign p1_smul_1141_comb = smul32b_32b_x_32b(p0_TestBlock__A_op3, p0_TestBlock__B_op3);
  assign p1_smul_1142_comb = smul32b_32b_x_32b(p0_TestBlock__A_op4, p0_TestBlock__B_op4);
  assign p1_smul_1143_comb = smul32b_32b_x_32b(p0_TestBlock__A_op5, p0_TestBlock__B_op5);
  assign p1_smul_1144_comb = smul32b_32b_x_32b(p0_TestBlock__A_op6, p0_TestBlock__B_op6);
  assign p1_smul_1145_comb = smul32b_32b_x_32b(p0_TestBlock__A_op7, p0_TestBlock__B_op7);
  assign p1_smul_1146_comb = smul32b_32b_x_32b(p0_TestBlock__A_op8, p0_TestBlock__B_op8);
  assign p1_smul_1147_comb = smul32b_32b_x_32b(p0_TestBlock__A_op9, p0_TestBlock__B_op9);

  // Registers for pipe stage 1:
  reg [31:0] p1_smul_1138;
  reg [31:0] p1_smul_1139;
  reg [31:0] p1_smul_1140;
  reg [31:0] p1_smul_1141;
  reg [31:0] p1_smul_1142;
  reg [31:0] p1_smul_1143;
  reg [31:0] p1_smul_1144;
  reg [31:0] p1_smul_1145;
  reg [31:0] p1_smul_1146;
  reg [31:0] p1_smul_1147;
  always_ff @ (posedge clk) begin
    p1_smul_1138 <= p1_smul_1138_comb;
    p1_smul_1139 <= p1_smul_1139_comb;
    p1_smul_1140 <= p1_smul_1140_comb;
    p1_smul_1141 <= p1_smul_1141_comb;
    p1_smul_1142 <= p1_smul_1142_comb;
    p1_smul_1143 <= p1_smul_1143_comb;
    p1_smul_1144 <= p1_smul_1144_comb;
    p1_smul_1145 <= p1_smul_1145_comb;
    p1_smul_1146 <= p1_smul_1146_comb;
    p1_smul_1147 <= p1_smul_1147_comb;
  end

  // ===== Pipe stage 2:
  wire [31:0] p2_add_1179_comb;
  wire [31:0] p2_add_1180_comb;
  wire [31:0] p2_add_1183_comb;
  wire [31:0] p2_add_1184_comb;
  wire [31:0] p2_add_1181_comb;
  wire [31:0] p2_add_1182_comb;
  wire [31:0] p2_add_1185_comb;
  assign p2_add_1179_comb = p1_smul_1138 + p1_smul_1139;
  assign p2_add_1180_comb = p1_smul_1140 + p1_smul_1141;
  assign p2_add_1183_comb = p1_smul_1144 + p1_smul_1145;
  assign p2_add_1184_comb = p1_smul_1146 + p1_smul_1147;
  assign p2_add_1181_comb = p2_add_1179_comb + p2_add_1180_comb;
  assign p2_add_1182_comb = p1_smul_1142 + p1_smul_1143;
  assign p2_add_1185_comb = p2_add_1183_comb + p2_add_1184_comb;

  // Registers for pipe stage 2:
  reg [31:0] p2_add_1181;
  reg [31:0] p2_add_1182;
  reg [31:0] p2_add_1185;
  always_ff @ (posedge clk) begin
    p2_add_1181 <= p2_add_1181_comb;
    p2_add_1182 <= p2_add_1182_comb;
    p2_add_1185 <= p2_add_1185_comb;
  end

  // ===== Pipe stage 3:
  wire [31:0] p3_add_1202_comb;
  wire [31:0] p3_add_1203_comb;
  assign p3_add_1202_comb = p2_add_1181 + p2_add_1182;
  assign p3_add_1203_comb = p3_add_1202_comb + p2_add_1185;

  // Registers for pipe stage 3:
  reg [31:0] p3_add_1203;
  always_ff @ (posedge clk) begin
    p3_add_1203 <= p3_add_1203_comb;
  end

  // ===== Pipe stage 4:

  // Registers for pipe stage 4:
  reg [31:0] p4_add_1203;
  always_ff @ (posedge clk) begin
    p4_add_1203 <= p3_add_1203;
  end

  // ===== Pipe stage 5:
  wire [52:0] p5_tuple_1250_comb;
  wire p5_tuple_index_1254_comb;
  wire p5_tuple_index_1257_comb;
  wire p5_tuple_index_1260_comb;
  wire p5_tuple_index_1263_comb;
  wire p5_tuple_index_1266_comb;
  wire p5_tuple_index_1269_comb;
  wire p5_tuple_index_1272_comb;
  wire p5_tuple_index_1275_comb;
  wire p5_tuple_index_1278_comb;
  wire p5_tuple_index_1281_comb;
  wire p5_tuple_index_1284_comb;
  wire p5_tuple_index_1287_comb;
  wire p5_tuple_index_1290_comb;
  wire p5_tuple_index_1293_comb;
  wire p5_tuple_index_1296_comb;
  wire p5_tuple_index_1299_comb;
  wire p5_tuple_index_1302_comb;
  wire p5_tuple_index_1305_comb;
  wire p5_tuple_index_1308_comb;
  wire p5_tuple_index_1311_comb;
  wire [32:0] p5_tuple_index_1314_comb;
  assign p5_tuple_1250_comb = {1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, {p4_add_1203, 1'h1}};
  assign p5_tuple_index_1254_comb = p5_tuple_1250_comb[52:52];
  assign p5_tuple_index_1257_comb = p5_tuple_1250_comb[51:51];
  assign p5_tuple_index_1260_comb = p5_tuple_1250_comb[50:50];
  assign p5_tuple_index_1263_comb = p5_tuple_1250_comb[49:49];
  assign p5_tuple_index_1266_comb = p5_tuple_1250_comb[48:48];
  assign p5_tuple_index_1269_comb = p5_tuple_1250_comb[47:47];
  assign p5_tuple_index_1272_comb = p5_tuple_1250_comb[46:46];
  assign p5_tuple_index_1275_comb = p5_tuple_1250_comb[45:45];
  assign p5_tuple_index_1278_comb = p5_tuple_1250_comb[44:44];
  assign p5_tuple_index_1281_comb = p5_tuple_1250_comb[43:43];
  assign p5_tuple_index_1284_comb = p5_tuple_1250_comb[42:42];
  assign p5_tuple_index_1287_comb = p5_tuple_1250_comb[41:41];
  assign p5_tuple_index_1290_comb = p5_tuple_1250_comb[40:40];
  assign p5_tuple_index_1293_comb = p5_tuple_1250_comb[39:39];
  assign p5_tuple_index_1296_comb = p5_tuple_1250_comb[38:38];
  assign p5_tuple_index_1299_comb = p5_tuple_1250_comb[37:37];
  assign p5_tuple_index_1302_comb = p5_tuple_1250_comb[36:36];
  assign p5_tuple_index_1305_comb = p5_tuple_1250_comb[35:35];
  assign p5_tuple_index_1308_comb = p5_tuple_1250_comb[34:34];
  assign p5_tuple_index_1311_comb = p5_tuple_1250_comb[33:33];
  assign p5_tuple_index_1314_comb = p5_tuple_1250_comb[32:0];

  // Registers for pipe stage 5:
  reg p5_tuple_1250_index1;
  reg p5_tuple_1250_index2;
  reg p5_tuple_1250_index3;
  reg p5_tuple_1250_index4;
  reg p5_tuple_1250_index5;
  reg p5_tuple_1250_index6;
  reg p5_tuple_1250_index7;
  reg p5_tuple_1250_index8;
  reg p5_tuple_1250_index9;
  reg p5_tuple_1250_index10;
  reg p5_tuple_1250_index11;
  reg p5_tuple_1250_index12;
  reg p5_tuple_1250_index13;
  reg p5_tuple_1250_index14;
  reg p5_tuple_1250_index15;
  reg p5_tuple_1250_index16;
  reg p5_tuple_1250_index17;
  reg p5_tuple_1250_index18;
  reg p5_tuple_1250_index19;
  reg p5_tuple_1250_index20;
  reg [32:0] p5_tuple_1250_index21;
  always_ff @ (posedge clk) begin
    p5_tuple_1250_index1 <= p5_tuple_index_1254_comb;
    p5_tuple_1250_index2 <= p5_tuple_index_1257_comb;
    p5_tuple_1250_index3 <= p5_tuple_index_1260_comb;
    p5_tuple_1250_index4 <= p5_tuple_index_1263_comb;
    p5_tuple_1250_index5 <= p5_tuple_index_1266_comb;
    p5_tuple_1250_index6 <= p5_tuple_index_1269_comb;
    p5_tuple_1250_index7 <= p5_tuple_index_1272_comb;
    p5_tuple_1250_index8 <= p5_tuple_index_1275_comb;
    p5_tuple_1250_index9 <= p5_tuple_index_1278_comb;
    p5_tuple_1250_index10 <= p5_tuple_index_1281_comb;
    p5_tuple_1250_index11 <= p5_tuple_index_1284_comb;
    p5_tuple_1250_index12 <= p5_tuple_index_1287_comb;
    p5_tuple_1250_index13 <= p5_tuple_index_1290_comb;
    p5_tuple_1250_index14 <= p5_tuple_index_1293_comb;
    p5_tuple_1250_index15 <= p5_tuple_index_1296_comb;
    p5_tuple_1250_index16 <= p5_tuple_index_1299_comb;
    p5_tuple_1250_index17 <= p5_tuple_index_1302_comb;
    p5_tuple_1250_index18 <= p5_tuple_index_1305_comb;
    p5_tuple_1250_index19 <= p5_tuple_index_1308_comb;
    p5_tuple_1250_index20 <= p5_tuple_index_1311_comb;
    p5_tuple_1250_index21 <= p5_tuple_index_1314_comb;
  end

  // ===== Pipe stage 6:
  assign out = {p5_tuple_1250_index1, p5_tuple_1250_index2, p5_tuple_1250_index3, p5_tuple_1250_index4, p5_tuple_1250_index5, p5_tuple_1250_index6, p5_tuple_1250_index7, p5_tuple_1250_index8, p5_tuple_1250_index9, p5_tuple_1250_index10, p5_tuple_1250_index11, p5_tuple_1250_index12, p5_tuple_1250_index13, p5_tuple_1250_index14, p5_tuple_1250_index15, p5_tuple_1250_index16, p5_tuple_1250_index17, p5_tuple_1250_index18, p5_tuple_1250_index19, p5_tuple_1250_index20, p5_tuple_1250_index21};
endmodule
