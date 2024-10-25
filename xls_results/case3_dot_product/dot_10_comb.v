module dot_10_pipeline(
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
  wire [31:0] literal_830[10];
  assign literal_830 = '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000};
  wire [31:0] literal_833[10];
  assign literal_833 = '{32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000, 32'h0000_0000};
  wire [31:0] literal_831;
  wire [31:0] array_update_836[10];
  wire [31:0] add_837;
  wire [31:0] array_update_839[10];
  wire [31:0] array_update_841[10];
  wire [31:0] add_842;
  wire [31:0] array_update_844[10];
  wire [31:0] array_update_847[10];
  wire [31:0] add_848;
  wire [31:0] array_update_850[10];
  wire [31:0] array_update_854[10];
  wire [31:0] add_855;
  wire [31:0] array_update_857[10];
  wire [31:0] array_update_862[10];
  wire [31:0] add_863;
  wire [31:0] array_update_865[10];
  wire [31:0] array_update_870[10];
  wire [31:0] add_871;
  wire [31:0] array_update_873[10];
  wire [31:0] array_update_878[10];
  wire [31:0] add_879;
  wire [31:0] array_update_881[10];
  wire [31:0] array_update_886[10];
  wire [31:0] add_887;
  wire [31:0] array_update_889[10];
  wire [31:0] array_update_894[10];
  wire [31:0] add_895;
  wire [31:0] array_update_896[10];
  wire [31:0] array_update_901[10];
  wire [31:0] literal_834;
  wire [31:0] array_update_902[10];
  wire [31:0] add_852;
  wire [31:0] smul_914;
  wire [31:0] add_868;
  wire [31:0] add_921;
  wire [31:0] smul_922;
  wire [31:0] add_884;
  wire [31:0] add_929;
  wire [31:0] smul_930;
  wire [31:0] add_899;
  wire [31:0] add_937;
  wire [31:0] smul_938;
  wire [31:0] add_911;
  wire [31:0] add_945;
  wire [31:0] smul_946;
  wire [31:0] add_927;
  wire [31:0] add_953;
  wire [31:0] smul_954;
  wire [31:0] add_943;
  wire [31:0] add_964;
  wire [31:0] smul_965;
  wire [31:0] add_959;
  wire [31:0] add_973;
  wire [31:0] smul_974;
  wire [31:0] add_977;
  wire [31:0] add_988;
  wire [31:0] smul_989;
  wire [31:0] add_1014;
  wire [31:0] smul_1015;
  wire [31:0] add_1044;
  assign literal_831 = 32'h0000_0000;
  assign array_update_836[0] = literal_831 == 32'h0000_0000 ? TestBlock__A_op0 : literal_830[0];
  assign array_update_836[1] = literal_831 == 32'h0000_0001 ? TestBlock__A_op0 : literal_830[1];
  assign array_update_836[2] = literal_831 == 32'h0000_0002 ? TestBlock__A_op0 : literal_830[2];
  assign array_update_836[3] = literal_831 == 32'h0000_0003 ? TestBlock__A_op0 : literal_830[3];
  assign array_update_836[4] = literal_831 == 32'h0000_0004 ? TestBlock__A_op0 : literal_830[4];
  assign array_update_836[5] = literal_831 == 32'h0000_0005 ? TestBlock__A_op0 : literal_830[5];
  assign array_update_836[6] = literal_831 == 32'h0000_0006 ? TestBlock__A_op0 : literal_830[6];
  assign array_update_836[7] = literal_831 == 32'h0000_0007 ? TestBlock__A_op0 : literal_830[7];
  assign array_update_836[8] = literal_831 == 32'h0000_0008 ? TestBlock__A_op0 : literal_830[8];
  assign array_update_836[9] = literal_831 == 32'h0000_0009 ? TestBlock__A_op0 : literal_830[9];
  assign add_837 = literal_831 + 32'h0000_0001;
  assign array_update_839[0] = literal_831 == 32'h0000_0000 ? TestBlock__B_op0 : literal_833[0];
  assign array_update_839[1] = literal_831 == 32'h0000_0001 ? TestBlock__B_op0 : literal_833[1];
  assign array_update_839[2] = literal_831 == 32'h0000_0002 ? TestBlock__B_op0 : literal_833[2];
  assign array_update_839[3] = literal_831 == 32'h0000_0003 ? TestBlock__B_op0 : literal_833[3];
  assign array_update_839[4] = literal_831 == 32'h0000_0004 ? TestBlock__B_op0 : literal_833[4];
  assign array_update_839[5] = literal_831 == 32'h0000_0005 ? TestBlock__B_op0 : literal_833[5];
  assign array_update_839[6] = literal_831 == 32'h0000_0006 ? TestBlock__B_op0 : literal_833[6];
  assign array_update_839[7] = literal_831 == 32'h0000_0007 ? TestBlock__B_op0 : literal_833[7];
  assign array_update_839[8] = literal_831 == 32'h0000_0008 ? TestBlock__B_op0 : literal_833[8];
  assign array_update_839[9] = literal_831 == 32'h0000_0009 ? TestBlock__B_op0 : literal_833[9];
  assign array_update_841[0] = add_837 == 32'h0000_0000 ? TestBlock__A_op1 : array_update_836[0];
  assign array_update_841[1] = add_837 == 32'h0000_0001 ? TestBlock__A_op1 : array_update_836[1];
  assign array_update_841[2] = add_837 == 32'h0000_0002 ? TestBlock__A_op1 : array_update_836[2];
  assign array_update_841[3] = add_837 == 32'h0000_0003 ? TestBlock__A_op1 : array_update_836[3];
  assign array_update_841[4] = add_837 == 32'h0000_0004 ? TestBlock__A_op1 : array_update_836[4];
  assign array_update_841[5] = add_837 == 32'h0000_0005 ? TestBlock__A_op1 : array_update_836[5];
  assign array_update_841[6] = add_837 == 32'h0000_0006 ? TestBlock__A_op1 : array_update_836[6];
  assign array_update_841[7] = add_837 == 32'h0000_0007 ? TestBlock__A_op1 : array_update_836[7];
  assign array_update_841[8] = add_837 == 32'h0000_0008 ? TestBlock__A_op1 : array_update_836[8];
  assign array_update_841[9] = add_837 == 32'h0000_0009 ? TestBlock__A_op1 : array_update_836[9];
  assign add_842 = add_837 + 32'h0000_0001;
  assign array_update_844[0] = add_837 == 32'h0000_0000 ? TestBlock__B_op1 : array_update_839[0];
  assign array_update_844[1] = add_837 == 32'h0000_0001 ? TestBlock__B_op1 : array_update_839[1];
  assign array_update_844[2] = add_837 == 32'h0000_0002 ? TestBlock__B_op1 : array_update_839[2];
  assign array_update_844[3] = add_837 == 32'h0000_0003 ? TestBlock__B_op1 : array_update_839[3];
  assign array_update_844[4] = add_837 == 32'h0000_0004 ? TestBlock__B_op1 : array_update_839[4];
  assign array_update_844[5] = add_837 == 32'h0000_0005 ? TestBlock__B_op1 : array_update_839[5];
  assign array_update_844[6] = add_837 == 32'h0000_0006 ? TestBlock__B_op1 : array_update_839[6];
  assign array_update_844[7] = add_837 == 32'h0000_0007 ? TestBlock__B_op1 : array_update_839[7];
  assign array_update_844[8] = add_837 == 32'h0000_0008 ? TestBlock__B_op1 : array_update_839[8];
  assign array_update_844[9] = add_837 == 32'h0000_0009 ? TestBlock__B_op1 : array_update_839[9];
  assign array_update_847[0] = add_842 == 32'h0000_0000 ? TestBlock__A_op2 : array_update_841[0];
  assign array_update_847[1] = add_842 == 32'h0000_0001 ? TestBlock__A_op2 : array_update_841[1];
  assign array_update_847[2] = add_842 == 32'h0000_0002 ? TestBlock__A_op2 : array_update_841[2];
  assign array_update_847[3] = add_842 == 32'h0000_0003 ? TestBlock__A_op2 : array_update_841[3];
  assign array_update_847[4] = add_842 == 32'h0000_0004 ? TestBlock__A_op2 : array_update_841[4];
  assign array_update_847[5] = add_842 == 32'h0000_0005 ? TestBlock__A_op2 : array_update_841[5];
  assign array_update_847[6] = add_842 == 32'h0000_0006 ? TestBlock__A_op2 : array_update_841[6];
  assign array_update_847[7] = add_842 == 32'h0000_0007 ? TestBlock__A_op2 : array_update_841[7];
  assign array_update_847[8] = add_842 == 32'h0000_0008 ? TestBlock__A_op2 : array_update_841[8];
  assign array_update_847[9] = add_842 == 32'h0000_0009 ? TestBlock__A_op2 : array_update_841[9];
  assign add_848 = add_842 + 32'h0000_0001;
  assign array_update_850[0] = add_842 == 32'h0000_0000 ? TestBlock__B_op2 : array_update_844[0];
  assign array_update_850[1] = add_842 == 32'h0000_0001 ? TestBlock__B_op2 : array_update_844[1];
  assign array_update_850[2] = add_842 == 32'h0000_0002 ? TestBlock__B_op2 : array_update_844[2];
  assign array_update_850[3] = add_842 == 32'h0000_0003 ? TestBlock__B_op2 : array_update_844[3];
  assign array_update_850[4] = add_842 == 32'h0000_0004 ? TestBlock__B_op2 : array_update_844[4];
  assign array_update_850[5] = add_842 == 32'h0000_0005 ? TestBlock__B_op2 : array_update_844[5];
  assign array_update_850[6] = add_842 == 32'h0000_0006 ? TestBlock__B_op2 : array_update_844[6];
  assign array_update_850[7] = add_842 == 32'h0000_0007 ? TestBlock__B_op2 : array_update_844[7];
  assign array_update_850[8] = add_842 == 32'h0000_0008 ? TestBlock__B_op2 : array_update_844[8];
  assign array_update_850[9] = add_842 == 32'h0000_0009 ? TestBlock__B_op2 : array_update_844[9];
  assign array_update_854[0] = add_848 == 32'h0000_0000 ? TestBlock__A_op3 : array_update_847[0];
  assign array_update_854[1] = add_848 == 32'h0000_0001 ? TestBlock__A_op3 : array_update_847[1];
  assign array_update_854[2] = add_848 == 32'h0000_0002 ? TestBlock__A_op3 : array_update_847[2];
  assign array_update_854[3] = add_848 == 32'h0000_0003 ? TestBlock__A_op3 : array_update_847[3];
  assign array_update_854[4] = add_848 == 32'h0000_0004 ? TestBlock__A_op3 : array_update_847[4];
  assign array_update_854[5] = add_848 == 32'h0000_0005 ? TestBlock__A_op3 : array_update_847[5];
  assign array_update_854[6] = add_848 == 32'h0000_0006 ? TestBlock__A_op3 : array_update_847[6];
  assign array_update_854[7] = add_848 == 32'h0000_0007 ? TestBlock__A_op3 : array_update_847[7];
  assign array_update_854[8] = add_848 == 32'h0000_0008 ? TestBlock__A_op3 : array_update_847[8];
  assign array_update_854[9] = add_848 == 32'h0000_0009 ? TestBlock__A_op3 : array_update_847[9];
  assign add_855 = add_848 + 32'h0000_0001;
  assign array_update_857[0] = add_848 == 32'h0000_0000 ? TestBlock__B_op3 : array_update_850[0];
  assign array_update_857[1] = add_848 == 32'h0000_0001 ? TestBlock__B_op3 : array_update_850[1];
  assign array_update_857[2] = add_848 == 32'h0000_0002 ? TestBlock__B_op3 : array_update_850[2];
  assign array_update_857[3] = add_848 == 32'h0000_0003 ? TestBlock__B_op3 : array_update_850[3];
  assign array_update_857[4] = add_848 == 32'h0000_0004 ? TestBlock__B_op3 : array_update_850[4];
  assign array_update_857[5] = add_848 == 32'h0000_0005 ? TestBlock__B_op3 : array_update_850[5];
  assign array_update_857[6] = add_848 == 32'h0000_0006 ? TestBlock__B_op3 : array_update_850[6];
  assign array_update_857[7] = add_848 == 32'h0000_0007 ? TestBlock__B_op3 : array_update_850[7];
  assign array_update_857[8] = add_848 == 32'h0000_0008 ? TestBlock__B_op3 : array_update_850[8];
  assign array_update_857[9] = add_848 == 32'h0000_0009 ? TestBlock__B_op3 : array_update_850[9];
  assign array_update_862[0] = add_855 == 32'h0000_0000 ? TestBlock__A_op4 : array_update_854[0];
  assign array_update_862[1] = add_855 == 32'h0000_0001 ? TestBlock__A_op4 : array_update_854[1];
  assign array_update_862[2] = add_855 == 32'h0000_0002 ? TestBlock__A_op4 : array_update_854[2];
  assign array_update_862[3] = add_855 == 32'h0000_0003 ? TestBlock__A_op4 : array_update_854[3];
  assign array_update_862[4] = add_855 == 32'h0000_0004 ? TestBlock__A_op4 : array_update_854[4];
  assign array_update_862[5] = add_855 == 32'h0000_0005 ? TestBlock__A_op4 : array_update_854[5];
  assign array_update_862[6] = add_855 == 32'h0000_0006 ? TestBlock__A_op4 : array_update_854[6];
  assign array_update_862[7] = add_855 == 32'h0000_0007 ? TestBlock__A_op4 : array_update_854[7];
  assign array_update_862[8] = add_855 == 32'h0000_0008 ? TestBlock__A_op4 : array_update_854[8];
  assign array_update_862[9] = add_855 == 32'h0000_0009 ? TestBlock__A_op4 : array_update_854[9];
  assign add_863 = add_855 + 32'h0000_0001;
  assign array_update_865[0] = add_855 == 32'h0000_0000 ? TestBlock__B_op4 : array_update_857[0];
  assign array_update_865[1] = add_855 == 32'h0000_0001 ? TestBlock__B_op4 : array_update_857[1];
  assign array_update_865[2] = add_855 == 32'h0000_0002 ? TestBlock__B_op4 : array_update_857[2];
  assign array_update_865[3] = add_855 == 32'h0000_0003 ? TestBlock__B_op4 : array_update_857[3];
  assign array_update_865[4] = add_855 == 32'h0000_0004 ? TestBlock__B_op4 : array_update_857[4];
  assign array_update_865[5] = add_855 == 32'h0000_0005 ? TestBlock__B_op4 : array_update_857[5];
  assign array_update_865[6] = add_855 == 32'h0000_0006 ? TestBlock__B_op4 : array_update_857[6];
  assign array_update_865[7] = add_855 == 32'h0000_0007 ? TestBlock__B_op4 : array_update_857[7];
  assign array_update_865[8] = add_855 == 32'h0000_0008 ? TestBlock__B_op4 : array_update_857[8];
  assign array_update_865[9] = add_855 == 32'h0000_0009 ? TestBlock__B_op4 : array_update_857[9];
  assign array_update_870[0] = add_863 == 32'h0000_0000 ? TestBlock__A_op5 : array_update_862[0];
  assign array_update_870[1] = add_863 == 32'h0000_0001 ? TestBlock__A_op5 : array_update_862[1];
  assign array_update_870[2] = add_863 == 32'h0000_0002 ? TestBlock__A_op5 : array_update_862[2];
  assign array_update_870[3] = add_863 == 32'h0000_0003 ? TestBlock__A_op5 : array_update_862[3];
  assign array_update_870[4] = add_863 == 32'h0000_0004 ? TestBlock__A_op5 : array_update_862[4];
  assign array_update_870[5] = add_863 == 32'h0000_0005 ? TestBlock__A_op5 : array_update_862[5];
  assign array_update_870[6] = add_863 == 32'h0000_0006 ? TestBlock__A_op5 : array_update_862[6];
  assign array_update_870[7] = add_863 == 32'h0000_0007 ? TestBlock__A_op5 : array_update_862[7];
  assign array_update_870[8] = add_863 == 32'h0000_0008 ? TestBlock__A_op5 : array_update_862[8];
  assign array_update_870[9] = add_863 == 32'h0000_0009 ? TestBlock__A_op5 : array_update_862[9];
  assign add_871 = add_863 + 32'h0000_0001;
  assign array_update_873[0] = add_863 == 32'h0000_0000 ? TestBlock__B_op5 : array_update_865[0];
  assign array_update_873[1] = add_863 == 32'h0000_0001 ? TestBlock__B_op5 : array_update_865[1];
  assign array_update_873[2] = add_863 == 32'h0000_0002 ? TestBlock__B_op5 : array_update_865[2];
  assign array_update_873[3] = add_863 == 32'h0000_0003 ? TestBlock__B_op5 : array_update_865[3];
  assign array_update_873[4] = add_863 == 32'h0000_0004 ? TestBlock__B_op5 : array_update_865[4];
  assign array_update_873[5] = add_863 == 32'h0000_0005 ? TestBlock__B_op5 : array_update_865[5];
  assign array_update_873[6] = add_863 == 32'h0000_0006 ? TestBlock__B_op5 : array_update_865[6];
  assign array_update_873[7] = add_863 == 32'h0000_0007 ? TestBlock__B_op5 : array_update_865[7];
  assign array_update_873[8] = add_863 == 32'h0000_0008 ? TestBlock__B_op5 : array_update_865[8];
  assign array_update_873[9] = add_863 == 32'h0000_0009 ? TestBlock__B_op5 : array_update_865[9];
  assign array_update_878[0] = add_871 == 32'h0000_0000 ? TestBlock__A_op6 : array_update_870[0];
  assign array_update_878[1] = add_871 == 32'h0000_0001 ? TestBlock__A_op6 : array_update_870[1];
  assign array_update_878[2] = add_871 == 32'h0000_0002 ? TestBlock__A_op6 : array_update_870[2];
  assign array_update_878[3] = add_871 == 32'h0000_0003 ? TestBlock__A_op6 : array_update_870[3];
  assign array_update_878[4] = add_871 == 32'h0000_0004 ? TestBlock__A_op6 : array_update_870[4];
  assign array_update_878[5] = add_871 == 32'h0000_0005 ? TestBlock__A_op6 : array_update_870[5];
  assign array_update_878[6] = add_871 == 32'h0000_0006 ? TestBlock__A_op6 : array_update_870[6];
  assign array_update_878[7] = add_871 == 32'h0000_0007 ? TestBlock__A_op6 : array_update_870[7];
  assign array_update_878[8] = add_871 == 32'h0000_0008 ? TestBlock__A_op6 : array_update_870[8];
  assign array_update_878[9] = add_871 == 32'h0000_0009 ? TestBlock__A_op6 : array_update_870[9];
  assign add_879 = add_871 + 32'h0000_0001;
  assign array_update_881[0] = add_871 == 32'h0000_0000 ? TestBlock__B_op6 : array_update_873[0];
  assign array_update_881[1] = add_871 == 32'h0000_0001 ? TestBlock__B_op6 : array_update_873[1];
  assign array_update_881[2] = add_871 == 32'h0000_0002 ? TestBlock__B_op6 : array_update_873[2];
  assign array_update_881[3] = add_871 == 32'h0000_0003 ? TestBlock__B_op6 : array_update_873[3];
  assign array_update_881[4] = add_871 == 32'h0000_0004 ? TestBlock__B_op6 : array_update_873[4];
  assign array_update_881[5] = add_871 == 32'h0000_0005 ? TestBlock__B_op6 : array_update_873[5];
  assign array_update_881[6] = add_871 == 32'h0000_0006 ? TestBlock__B_op6 : array_update_873[6];
  assign array_update_881[7] = add_871 == 32'h0000_0007 ? TestBlock__B_op6 : array_update_873[7];
  assign array_update_881[8] = add_871 == 32'h0000_0008 ? TestBlock__B_op6 : array_update_873[8];
  assign array_update_881[9] = add_871 == 32'h0000_0009 ? TestBlock__B_op6 : array_update_873[9];
  assign array_update_886[0] = add_879 == 32'h0000_0000 ? TestBlock__A_op7 : array_update_878[0];
  assign array_update_886[1] = add_879 == 32'h0000_0001 ? TestBlock__A_op7 : array_update_878[1];
  assign array_update_886[2] = add_879 == 32'h0000_0002 ? TestBlock__A_op7 : array_update_878[2];
  assign array_update_886[3] = add_879 == 32'h0000_0003 ? TestBlock__A_op7 : array_update_878[3];
  assign array_update_886[4] = add_879 == 32'h0000_0004 ? TestBlock__A_op7 : array_update_878[4];
  assign array_update_886[5] = add_879 == 32'h0000_0005 ? TestBlock__A_op7 : array_update_878[5];
  assign array_update_886[6] = add_879 == 32'h0000_0006 ? TestBlock__A_op7 : array_update_878[6];
  assign array_update_886[7] = add_879 == 32'h0000_0007 ? TestBlock__A_op7 : array_update_878[7];
  assign array_update_886[8] = add_879 == 32'h0000_0008 ? TestBlock__A_op7 : array_update_878[8];
  assign array_update_886[9] = add_879 == 32'h0000_0009 ? TestBlock__A_op7 : array_update_878[9];
  assign add_887 = add_879 + 32'h0000_0001;
  assign array_update_889[0] = add_879 == 32'h0000_0000 ? TestBlock__B_op7 : array_update_881[0];
  assign array_update_889[1] = add_879 == 32'h0000_0001 ? TestBlock__B_op7 : array_update_881[1];
  assign array_update_889[2] = add_879 == 32'h0000_0002 ? TestBlock__B_op7 : array_update_881[2];
  assign array_update_889[3] = add_879 == 32'h0000_0003 ? TestBlock__B_op7 : array_update_881[3];
  assign array_update_889[4] = add_879 == 32'h0000_0004 ? TestBlock__B_op7 : array_update_881[4];
  assign array_update_889[5] = add_879 == 32'h0000_0005 ? TestBlock__B_op7 : array_update_881[5];
  assign array_update_889[6] = add_879 == 32'h0000_0006 ? TestBlock__B_op7 : array_update_881[6];
  assign array_update_889[7] = add_879 == 32'h0000_0007 ? TestBlock__B_op7 : array_update_881[7];
  assign array_update_889[8] = add_879 == 32'h0000_0008 ? TestBlock__B_op7 : array_update_881[8];
  assign array_update_889[9] = add_879 == 32'h0000_0009 ? TestBlock__B_op7 : array_update_881[9];
  assign array_update_894[0] = add_887 == 32'h0000_0000 ? TestBlock__A_op8 : array_update_886[0];
  assign array_update_894[1] = add_887 == 32'h0000_0001 ? TestBlock__A_op8 : array_update_886[1];
  assign array_update_894[2] = add_887 == 32'h0000_0002 ? TestBlock__A_op8 : array_update_886[2];
  assign array_update_894[3] = add_887 == 32'h0000_0003 ? TestBlock__A_op8 : array_update_886[3];
  assign array_update_894[4] = add_887 == 32'h0000_0004 ? TestBlock__A_op8 : array_update_886[4];
  assign array_update_894[5] = add_887 == 32'h0000_0005 ? TestBlock__A_op8 : array_update_886[5];
  assign array_update_894[6] = add_887 == 32'h0000_0006 ? TestBlock__A_op8 : array_update_886[6];
  assign array_update_894[7] = add_887 == 32'h0000_0007 ? TestBlock__A_op8 : array_update_886[7];
  assign array_update_894[8] = add_887 == 32'h0000_0008 ? TestBlock__A_op8 : array_update_886[8];
  assign array_update_894[9] = add_887 == 32'h0000_0009 ? TestBlock__A_op8 : array_update_886[9];
  assign add_895 = add_887 + 32'h0000_0001;
  assign array_update_896[0] = add_887 == 32'h0000_0000 ? TestBlock__B_op8 : array_update_889[0];
  assign array_update_896[1] = add_887 == 32'h0000_0001 ? TestBlock__B_op8 : array_update_889[1];
  assign array_update_896[2] = add_887 == 32'h0000_0002 ? TestBlock__B_op8 : array_update_889[2];
  assign array_update_896[3] = add_887 == 32'h0000_0003 ? TestBlock__B_op8 : array_update_889[3];
  assign array_update_896[4] = add_887 == 32'h0000_0004 ? TestBlock__B_op8 : array_update_889[4];
  assign array_update_896[5] = add_887 == 32'h0000_0005 ? TestBlock__B_op8 : array_update_889[5];
  assign array_update_896[6] = add_887 == 32'h0000_0006 ? TestBlock__B_op8 : array_update_889[6];
  assign array_update_896[7] = add_887 == 32'h0000_0007 ? TestBlock__B_op8 : array_update_889[7];
  assign array_update_896[8] = add_887 == 32'h0000_0008 ? TestBlock__B_op8 : array_update_889[8];
  assign array_update_896[9] = add_887 == 32'h0000_0009 ? TestBlock__B_op8 : array_update_889[9];
  assign array_update_901[0] = add_895 == 32'h0000_0000 ? TestBlock__A_op9 : array_update_894[0];
  assign array_update_901[1] = add_895 == 32'h0000_0001 ? TestBlock__A_op9 : array_update_894[1];
  assign array_update_901[2] = add_895 == 32'h0000_0002 ? TestBlock__A_op9 : array_update_894[2];
  assign array_update_901[3] = add_895 == 32'h0000_0003 ? TestBlock__A_op9 : array_update_894[3];
  assign array_update_901[4] = add_895 == 32'h0000_0004 ? TestBlock__A_op9 : array_update_894[4];
  assign array_update_901[5] = add_895 == 32'h0000_0005 ? TestBlock__A_op9 : array_update_894[5];
  assign array_update_901[6] = add_895 == 32'h0000_0006 ? TestBlock__A_op9 : array_update_894[6];
  assign array_update_901[7] = add_895 == 32'h0000_0007 ? TestBlock__A_op9 : array_update_894[7];
  assign array_update_901[8] = add_895 == 32'h0000_0008 ? TestBlock__A_op9 : array_update_894[8];
  assign array_update_901[9] = add_895 == 32'h0000_0009 ? TestBlock__A_op9 : array_update_894[9];
  assign literal_834 = 32'h0000_0000;
  assign array_update_902[0] = add_895 == 32'h0000_0000 ? TestBlock__B_op9 : array_update_896[0];
  assign array_update_902[1] = add_895 == 32'h0000_0001 ? TestBlock__B_op9 : array_update_896[1];
  assign array_update_902[2] = add_895 == 32'h0000_0002 ? TestBlock__B_op9 : array_update_896[2];
  assign array_update_902[3] = add_895 == 32'h0000_0003 ? TestBlock__B_op9 : array_update_896[3];
  assign array_update_902[4] = add_895 == 32'h0000_0004 ? TestBlock__B_op9 : array_update_896[4];
  assign array_update_902[5] = add_895 == 32'h0000_0005 ? TestBlock__B_op9 : array_update_896[5];
  assign array_update_902[6] = add_895 == 32'h0000_0006 ? TestBlock__B_op9 : array_update_896[6];
  assign array_update_902[7] = add_895 == 32'h0000_0007 ? TestBlock__B_op9 : array_update_896[7];
  assign array_update_902[8] = add_895 == 32'h0000_0008 ? TestBlock__B_op9 : array_update_896[8];
  assign array_update_902[9] = add_895 == 32'h0000_0009 ? TestBlock__B_op9 : array_update_896[9];
  assign add_852 = literal_834 + 32'h0000_0001;
  assign smul_914 = smul32b_32b_x_32b(array_update_901[literal_834 > 32'h0000_0009 ? 4'h9 : literal_834[3:0]], array_update_902[literal_834 > 32'h0000_0009 ? 4'h9 : literal_834[3:0]]);
  assign add_868 = add_852 + 32'h0000_0001;
  assign add_921 = 32'h0000_0000 + smul_914;
  assign smul_922 = smul32b_32b_x_32b(array_update_901[add_852 > 32'h0000_0009 ? 4'h9 : add_852[3:0]], array_update_902[add_852 > 32'h0000_0009 ? 4'h9 : add_852[3:0]]);
  assign add_884 = add_868 + 32'h0000_0001;
  assign add_929 = add_921 + smul_922;
  assign smul_930 = smul32b_32b_x_32b(array_update_901[add_868 > 32'h0000_0009 ? 4'h9 : add_868[3:0]], array_update_902[add_868 > 32'h0000_0009 ? 4'h9 : add_868[3:0]]);
  assign add_899 = add_884 + 32'h0000_0001;
  assign add_937 = add_929 + smul_930;
  assign smul_938 = smul32b_32b_x_32b(array_update_901[add_884 > 32'h0000_0009 ? 4'h9 : add_884[3:0]], array_update_902[add_884 > 32'h0000_0009 ? 4'h9 : add_884[3:0]]);
  assign add_911 = add_899 + 32'h0000_0001;
  assign add_945 = add_937 + smul_938;
  assign smul_946 = smul32b_32b_x_32b(array_update_901[add_899 > 32'h0000_0009 ? 4'h9 : add_899[3:0]], array_update_902[add_899 > 32'h0000_0009 ? 4'h9 : add_899[3:0]]);
  assign add_927 = add_911 + 32'h0000_0001;
  assign add_953 = add_945 + smul_946;
  assign smul_954 = smul32b_32b_x_32b(array_update_901[add_911 > 32'h0000_0009 ? 4'h9 : add_911[3:0]], array_update_902[add_911 > 32'h0000_0009 ? 4'h9 : add_911[3:0]]);
  assign add_943 = add_927 + 32'h0000_0001;
  assign add_964 = add_953 + smul_954;
  assign smul_965 = smul32b_32b_x_32b(array_update_901[add_927 > 32'h0000_0009 ? 4'h9 : add_927[3:0]], array_update_902[add_927 > 32'h0000_0009 ? 4'h9 : add_927[3:0]]);
  assign add_959 = add_943 + 32'h0000_0001;
  assign add_973 = add_964 + smul_965;
  assign smul_974 = smul32b_32b_x_32b(array_update_901[add_943 > 32'h0000_0009 ? 4'h9 : add_943[3:0]], array_update_902[add_943 > 32'h0000_0009 ? 4'h9 : add_943[3:0]]);
  assign add_977 = add_959 + 32'h0000_0001;
  assign add_988 = add_973 + smul_974;
  assign smul_989 = smul32b_32b_x_32b(array_update_901[add_959 > 32'h0000_0009 ? 4'h9 : add_959[3:0]], array_update_902[add_959 > 32'h0000_0009 ? 4'h9 : add_959[3:0]]);
  assign add_1014 = add_988 + smul_989;
  assign smul_1015 = smul32b_32b_x_32b(array_update_901[add_977 > 32'h0000_0009 ? 4'h9 : add_977[3:0]], array_update_902[add_977 > 32'h0000_0009 ? 4'h9 : add_977[3:0]]);
  assign add_1044 = add_1014 + smul_1015;
  assign out = {literal_831 < 32'h0000_000a, literal_831 < 32'h0000_000a, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, 1'h1, {add_1044, 1'h1}};
endmodule
