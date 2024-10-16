module xls_test(
  input wire [31:0] ipt,
  output wire [31:0] out
);
  wire [31:0] add_6;
  assign add_6 = ipt + 32'h0000_0003;
  assign out = add_6;
endmodule
