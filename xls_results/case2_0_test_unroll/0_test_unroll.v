module xls_test_unroll(
  input wire clk,
  input wire [31:0] x,
  output wire [31:0] out
);
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_2b (input reg [31:0] lhs, input reg [1:0] rhs);
    begin
      umul32b_32b_x_2b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_3b (input reg [31:0] lhs, input reg [2:0] rhs);
    begin
      umul32b_32b_x_3b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_4b (input reg [31:0] lhs, input reg [3:0] rhs);
    begin
      umul32b_32b_x_4b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  // lint_off MULTIPLY
  function automatic [31:0] umul32b_32b_x_5b (input reg [31:0] lhs, input reg [4:0] rhs);
    begin
      umul32b_32b_x_5b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  // lint_off MULTIPLY
  function automatic [30:0] umul31b_31b_x_2b (input reg [30:0] lhs, input reg [1:0] rhs);
    begin
      umul31b_31b_x_2b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  // lint_off MULTIPLY
  function automatic [30:0] umul31b_31b_x_3b (input reg [30:0] lhs, input reg [2:0] rhs);
    begin
      umul31b_31b_x_3b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  // lint_off MULTIPLY
  function automatic [29:0] umul30b_30b_x_2b (input reg [29:0] lhs, input reg [1:0] rhs);
    begin
      umul30b_30b_x_2b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  // lint_off MULTIPLY
  function automatic [30:0] umul31b_31b_x_4b (input reg [30:0] lhs, input reg [3:0] rhs);
    begin
      umul31b_31b_x_4b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  // lint_off MULTIPLY
  function automatic [29:0] umul30b_30b_x_3b (input reg [29:0] lhs, input reg [2:0] rhs);
    begin
      umul30b_30b_x_3b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  // lint_off MULTIPLY
  function automatic [28:0] umul29b_29b_x_2b (input reg [28:0] lhs, input reg [1:0] rhs);
    begin
      umul29b_29b_x_2b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY

  // ===== Pipe stage 0:

  // Registers for pipe stage 0:
  reg [31:0] p0_x;
  always_ff @ (posedge clk) begin
    p0_x <= x;
  end

  // ===== Pipe stage 1:
  wire [31:0] p1_umul_1372_comb;
  wire [29:0] p1_bit_slice_1373_comb;
  wire [1:0] p1_bit_slice_1374_comb;
  assign p1_umul_1372_comb = umul32b_32b_x_2b(p0_x, 2'h3);
  assign p1_bit_slice_1373_comb = p1_umul_1372_comb[31:2];
  assign p1_bit_slice_1374_comb = p1_umul_1372_comb[1:0];

  // Registers for pipe stage 1:
  reg [31:0] p1_x;
  reg [29:0] p1_bit_slice_1373;
  reg [1:0] p1_bit_slice_1374;
  always_ff @ (posedge clk) begin
    p1_x <= p0_x;
    p1_bit_slice_1373 <= p1_bit_slice_1373_comb;
    p1_bit_slice_1374 <= p1_bit_slice_1374_comb;
  end

  // ===== Pipe stage 2:
  wire [30:0] p2_add_1447_comb;
  wire [29:0] p2_add_1449_comb;
  wire [31:0] p2_umul_1394_comb;
  wire [31:0] p2_umul_1397_comb;
  wire [31:0] p2_umul_1398_comb;
  wire [31:0] p2_umul_1400_comb;
  wire [31:0] p2_umul_1403_comb;
  wire [31:0] p2_umul_1405_comb;
  wire [31:0] p2_umul_1406_comb;
  wire [31:0] p2_umul_1408_comb;
  wire [31:0] p2_umul_1410_comb;
  wire [31:0] p2_umul_1412_comb;
  wire [28:0] p2_bit_slice_1413_comb;
  wire [31:0] p2_umul_1415_comb;
  wire [31:0] p2_umul_1417_comb;
  wire [31:0] p2_umul_1419_comb;
  wire [30:0] p2_bit_slice_1422_comb;
  wire [30:0] p2_umul_1073_NarrowedMult__comb;
  wire [28:0] p2_bit_slice_1424_comb;
  wire [30:0] p2_bit_slice_1425_comb;
  wire [30:0] p2_umul_1079_NarrowedMult__comb;
  wire [29:0] p2_bit_slice_1427_comb;
  wire [29:0] p2_umul_1083_NarrowedMult__comb;
  wire [30:0] p2_bit_slice_1429_comb;
  wire [30:0] p2_umul_1087_NarrowedMult__comb;
  wire [27:0] p2_bit_slice_1431_comb;
  wire [27:0] p2_bit_slice_1432_comb;
  wire [30:0] p2_bit_slice_1433_comb;
  wire [30:0] p2_umul_1093_NarrowedMult__comb;
  wire [29:0] p2_bit_slice_1435_comb;
  wire [29:0] p2_umul_1097_NarrowedMult__comb;
  wire [30:0] p2_bit_slice_1437_comb;
  wire [30:0] p2_umul_1101_NarrowedMult__comb;
  wire [28:0] p2_bit_slice_1439_comb;
  wire [28:0] p2_umul_1105_NarrowedMult__comb;
  wire [30:0] p2_bit_slice_1441_comb;
  wire [30:0] p2_umul_1109_NarrowedMult__comb;
  wire [29:0] p2_bit_slice_1443_comb;
  wire [29:0] p2_umul_1113_NarrowedMult__comb;
  wire [30:0] p2_bit_slice_1445_comb;
  wire [30:0] p2_umul_1117_NarrowedMult__comb;
  wire p2_bit_slice_1450_comb;
  wire [2:0] p2_bit_slice_1451_comb;
  wire p2_bit_slice_1452_comb;
  wire [1:0] p2_bit_slice_1453_comb;
  wire p2_bit_slice_1454_comb;
  wire [3:0] p2_bit_slice_1455_comb;
  wire p2_bit_slice_1456_comb;
  wire [1:0] p2_bit_slice_1457_comb;
  wire p2_bit_slice_1458_comb;
  wire [2:0] p2_bit_slice_1459_comb;
  wire p2_bit_slice_1460_comb;
  wire [1:0] p2_bit_slice_1461_comb;
  wire p2_bit_slice_1462_comb;
  wire [31:0] p2_umul_1466_comb;
  wire [31:0] p2_add_1467_comb;
  assign p2_add_1447_comb = p1_x[31:1] + p1_x[30:0];
  assign p2_add_1449_comb = p1_bit_slice_1373 + p1_x[29:0];
  assign p2_umul_1394_comb = umul32b_32b_x_3b(p1_x, 3'h5);
  assign p2_umul_1397_comb = umul32b_32b_x_3b(p1_x, 3'h7);
  assign p2_umul_1398_comb = umul32b_32b_x_4b(p1_x, 4'h9);
  assign p2_umul_1400_comb = umul32b_32b_x_4b(p1_x, 4'hb);
  assign p2_umul_1403_comb = umul32b_32b_x_4b(p1_x, 4'hd);
  assign p2_umul_1405_comb = umul32b_32b_x_4b(p1_x, 4'hf);
  assign p2_umul_1406_comb = umul32b_32b_x_5b(p1_x, 5'h11);
  assign p2_umul_1408_comb = umul32b_32b_x_5b(p1_x, 5'h13);
  assign p2_umul_1410_comb = umul32b_32b_x_5b(p1_x, 5'h15);
  assign p2_umul_1412_comb = umul32b_32b_x_5b(p1_x, 5'h17);
  assign p2_bit_slice_1413_comb = p1_x[28:0];
  assign p2_umul_1415_comb = umul32b_32b_x_5b(p1_x, 5'h19);
  assign p2_umul_1417_comb = umul32b_32b_x_5b(p1_x, 5'h1b);
  assign p2_umul_1419_comb = umul32b_32b_x_5b(p1_x, 5'h1d);
  assign p2_bit_slice_1422_comb = p2_umul_1394_comb[31:1];
  assign p2_umul_1073_NarrowedMult__comb = umul31b_31b_x_2b(p1_x[30:0], 2'h3);
  assign p2_bit_slice_1424_comb = p2_umul_1397_comb[31:3];
  assign p2_bit_slice_1425_comb = p2_umul_1398_comb[31:1];
  assign p2_umul_1079_NarrowedMult__comb = umul31b_31b_x_3b(p1_x[30:0], 3'h5);
  assign p2_bit_slice_1427_comb = p2_umul_1400_comb[31:2];
  assign p2_umul_1083_NarrowedMult__comb = umul30b_30b_x_2b(p1_x[29:0], 2'h3);
  assign p2_bit_slice_1429_comb = p2_umul_1403_comb[31:1];
  assign p2_umul_1087_NarrowedMult__comb = umul31b_31b_x_3b(p1_x[30:0], 3'h7);
  assign p2_bit_slice_1431_comb = p2_umul_1405_comb[31:4];
  assign p2_bit_slice_1432_comb = p1_x[27:0];
  assign p2_bit_slice_1433_comb = p2_umul_1406_comb[31:1];
  assign p2_umul_1093_NarrowedMult__comb = umul31b_31b_x_4b(p1_x[30:0], 4'h9);
  assign p2_bit_slice_1435_comb = p2_umul_1408_comb[31:2];
  assign p2_umul_1097_NarrowedMult__comb = umul30b_30b_x_3b(p1_x[29:0], 3'h5);
  assign p2_bit_slice_1437_comb = p2_umul_1410_comb[31:1];
  assign p2_umul_1101_NarrowedMult__comb = umul31b_31b_x_4b(p1_x[30:0], 4'hb);
  assign p2_bit_slice_1439_comb = p2_umul_1412_comb[31:3];
  assign p2_umul_1105_NarrowedMult__comb = umul29b_29b_x_2b(p2_bit_slice_1413_comb, 2'h3);
  assign p2_bit_slice_1441_comb = p2_umul_1415_comb[31:1];
  assign p2_umul_1109_NarrowedMult__comb = umul31b_31b_x_4b(p1_x[30:0], 4'hd);
  assign p2_bit_slice_1443_comb = p2_umul_1417_comb[31:2];
  assign p2_umul_1113_NarrowedMult__comb = umul30b_30b_x_3b(p1_x[29:0], 3'h7);
  assign p2_bit_slice_1445_comb = p2_umul_1419_comb[31:1];
  assign p2_umul_1117_NarrowedMult__comb = umul31b_31b_x_4b(p1_x[30:0], 4'hf);
  assign p2_bit_slice_1450_comb = p2_umul_1394_comb[0];
  assign p2_bit_slice_1451_comb = p2_umul_1397_comb[2:0];
  assign p2_bit_slice_1452_comb = p2_umul_1398_comb[0];
  assign p2_bit_slice_1453_comb = p2_umul_1400_comb[1:0];
  assign p2_bit_slice_1454_comb = p2_umul_1403_comb[0];
  assign p2_bit_slice_1455_comb = p2_umul_1405_comb[3:0];
  assign p2_bit_slice_1456_comb = p2_umul_1406_comb[0];
  assign p2_bit_slice_1457_comb = p2_umul_1408_comb[1:0];
  assign p2_bit_slice_1458_comb = p2_umul_1410_comb[0];
  assign p2_bit_slice_1459_comb = p2_umul_1412_comb[2:0];
  assign p2_bit_slice_1460_comb = p2_umul_1415_comb[0];
  assign p2_bit_slice_1461_comb = p2_umul_1417_comb[1:0];
  assign p2_bit_slice_1462_comb = p2_umul_1419_comb[0];
  assign p2_umul_1466_comb = umul32b_32b_x_5b(p1_x, 5'h1f);
  assign p2_add_1467_comb = {p2_add_1447_comb, p1_x[0]} + {p2_add_1449_comb, p1_bit_slice_1374};

  // Registers for pipe stage 2:
  reg [28:0] p2_bit_slice_1413;
  reg [30:0] p2_bit_slice_1422;
  reg [30:0] p2_umul_1073_NarrowedMult_;
  reg [28:0] p2_bit_slice_1424;
  reg [30:0] p2_bit_slice_1425;
  reg [30:0] p2_umul_1079_NarrowedMult_;
  reg [29:0] p2_bit_slice_1427;
  reg [29:0] p2_umul_1083_NarrowedMult_;
  reg [30:0] p2_bit_slice_1429;
  reg [30:0] p2_umul_1087_NarrowedMult_;
  reg [27:0] p2_bit_slice_1431;
  reg [27:0] p2_bit_slice_1432;
  reg [30:0] p2_bit_slice_1433;
  reg [30:0] p2_umul_1093_NarrowedMult_;
  reg [29:0] p2_bit_slice_1435;
  reg [29:0] p2_umul_1097_NarrowedMult_;
  reg [30:0] p2_bit_slice_1437;
  reg [30:0] p2_umul_1101_NarrowedMult_;
  reg [28:0] p2_bit_slice_1439;
  reg [28:0] p2_umul_1105_NarrowedMult_;
  reg [30:0] p2_bit_slice_1441;
  reg [30:0] p2_umul_1109_NarrowedMult_;
  reg [29:0] p2_bit_slice_1443;
  reg [29:0] p2_umul_1113_NarrowedMult_;
  reg [30:0] p2_bit_slice_1445;
  reg [30:0] p2_umul_1117_NarrowedMult_;
  reg p2_bit_slice_1450;
  reg [2:0] p2_bit_slice_1451;
  reg p2_bit_slice_1452;
  reg [1:0] p2_bit_slice_1453;
  reg p2_bit_slice_1454;
  reg [3:0] p2_bit_slice_1455;
  reg p2_bit_slice_1456;
  reg [1:0] p2_bit_slice_1457;
  reg p2_bit_slice_1458;
  reg [2:0] p2_bit_slice_1459;
  reg p2_bit_slice_1460;
  reg [1:0] p2_bit_slice_1461;
  reg p2_bit_slice_1462;
  reg [31:0] p2_umul_1466;
  reg [31:0] p2_add_1467;
  always_ff @ (posedge clk) begin
    p2_bit_slice_1413 <= p2_bit_slice_1413_comb;
    p2_bit_slice_1422 <= p2_bit_slice_1422_comb;
    p2_umul_1073_NarrowedMult_ <= p2_umul_1073_NarrowedMult__comb;
    p2_bit_slice_1424 <= p2_bit_slice_1424_comb;
    p2_bit_slice_1425 <= p2_bit_slice_1425_comb;
    p2_umul_1079_NarrowedMult_ <= p2_umul_1079_NarrowedMult__comb;
    p2_bit_slice_1427 <= p2_bit_slice_1427_comb;
    p2_umul_1083_NarrowedMult_ <= p2_umul_1083_NarrowedMult__comb;
    p2_bit_slice_1429 <= p2_bit_slice_1429_comb;
    p2_umul_1087_NarrowedMult_ <= p2_umul_1087_NarrowedMult__comb;
    p2_bit_slice_1431 <= p2_bit_slice_1431_comb;
    p2_bit_slice_1432 <= p2_bit_slice_1432_comb;
    p2_bit_slice_1433 <= p2_bit_slice_1433_comb;
    p2_umul_1093_NarrowedMult_ <= p2_umul_1093_NarrowedMult__comb;
    p2_bit_slice_1435 <= p2_bit_slice_1435_comb;
    p2_umul_1097_NarrowedMult_ <= p2_umul_1097_NarrowedMult__comb;
    p2_bit_slice_1437 <= p2_bit_slice_1437_comb;
    p2_umul_1101_NarrowedMult_ <= p2_umul_1101_NarrowedMult__comb;
    p2_bit_slice_1439 <= p2_bit_slice_1439_comb;
    p2_umul_1105_NarrowedMult_ <= p2_umul_1105_NarrowedMult__comb;
    p2_bit_slice_1441 <= p2_bit_slice_1441_comb;
    p2_umul_1109_NarrowedMult_ <= p2_umul_1109_NarrowedMult__comb;
    p2_bit_slice_1443 <= p2_bit_slice_1443_comb;
    p2_umul_1113_NarrowedMult_ <= p2_umul_1113_NarrowedMult__comb;
    p2_bit_slice_1445 <= p2_bit_slice_1445_comb;
    p2_umul_1117_NarrowedMult_ <= p2_umul_1117_NarrowedMult__comb;
    p2_bit_slice_1450 <= p2_bit_slice_1450_comb;
    p2_bit_slice_1451 <= p2_bit_slice_1451_comb;
    p2_bit_slice_1452 <= p2_bit_slice_1452_comb;
    p2_bit_slice_1453 <= p2_bit_slice_1453_comb;
    p2_bit_slice_1454 <= p2_bit_slice_1454_comb;
    p2_bit_slice_1455 <= p2_bit_slice_1455_comb;
    p2_bit_slice_1456 <= p2_bit_slice_1456_comb;
    p2_bit_slice_1457 <= p2_bit_slice_1457_comb;
    p2_bit_slice_1458 <= p2_bit_slice_1458_comb;
    p2_bit_slice_1459 <= p2_bit_slice_1459_comb;
    p2_bit_slice_1460 <= p2_bit_slice_1460_comb;
    p2_bit_slice_1461 <= p2_bit_slice_1461_comb;
    p2_bit_slice_1462 <= p2_bit_slice_1462_comb;
    p2_umul_1466 <= p2_umul_1466_comb;
    p2_add_1467 <= p2_add_1467_comb;
  end

  // ===== Pipe stage 3:
  wire [30:0] p3_add_1550_comb;
  wire [28:0] p3_add_1551_comb;
  wire [30:0] p3_add_1552_comb;
  wire [29:0] p3_add_1553_comb;
  wire [30:0] p3_add_1554_comb;
  wire [27:0] p3_add_1555_comb;
  wire [30:0] p3_add_1556_comb;
  wire [29:0] p3_add_1557_comb;
  wire [30:0] p3_add_1558_comb;
  wire [28:0] p3_add_1559_comb;
  wire [30:0] p3_add_1560_comb;
  wire [29:0] p3_add_1561_comb;
  wire [30:0] p3_add_1562_comb;
  wire [31:0] p3_add_1576_comb;
  wire [31:0] p3_add_1577_comb;
  wire [31:0] p3_add_1578_comb;
  wire [31:0] p3_add_1579_comb;
  wire [31:0] p3_add_1580_comb;
  wire [31:0] p3_add_1581_comb;
  wire [31:0] p3_add_1582_comb;
  assign p3_add_1550_comb = p2_bit_slice_1422 + p2_umul_1073_NarrowedMult_;
  assign p3_add_1551_comb = p2_bit_slice_1424 + p2_bit_slice_1413;
  assign p3_add_1552_comb = p2_bit_slice_1425 + p2_umul_1079_NarrowedMult_;
  assign p3_add_1553_comb = p2_bit_slice_1427 + p2_umul_1083_NarrowedMult_;
  assign p3_add_1554_comb = p2_bit_slice_1429 + p2_umul_1087_NarrowedMult_;
  assign p3_add_1555_comb = p2_bit_slice_1431 + p2_bit_slice_1432;
  assign p3_add_1556_comb = p2_bit_slice_1433 + p2_umul_1093_NarrowedMult_;
  assign p3_add_1557_comb = p2_bit_slice_1435 + p2_umul_1097_NarrowedMult_;
  assign p3_add_1558_comb = p2_bit_slice_1437 + p2_umul_1101_NarrowedMult_;
  assign p3_add_1559_comb = p2_bit_slice_1439 + p2_umul_1105_NarrowedMult_;
  assign p3_add_1560_comb = p2_bit_slice_1441 + p2_umul_1109_NarrowedMult_;
  assign p3_add_1561_comb = p2_bit_slice_1443 + p2_umul_1113_NarrowedMult_;
  assign p3_add_1562_comb = p2_bit_slice_1445 + p2_umul_1117_NarrowedMult_;
  assign p3_add_1576_comb = {p3_add_1550_comb, p2_bit_slice_1450} + {p3_add_1551_comb, p2_bit_slice_1451};
  assign p3_add_1577_comb = {p3_add_1552_comb, p2_bit_slice_1452} + {p3_add_1553_comb, p2_bit_slice_1453};
  assign p3_add_1578_comb = {p3_add_1554_comb, p2_bit_slice_1454} + {p3_add_1555_comb, p2_bit_slice_1455};
  assign p3_add_1579_comb = {p3_add_1556_comb, p2_bit_slice_1456} + {p3_add_1557_comb, p2_bit_slice_1457};
  assign p3_add_1580_comb = {p3_add_1558_comb, p2_bit_slice_1458} + {p3_add_1559_comb, p2_bit_slice_1459};
  assign p3_add_1581_comb = {p3_add_1560_comb, p2_bit_slice_1460} + {p3_add_1561_comb, p2_bit_slice_1461};
  assign p3_add_1582_comb = {p3_add_1562_comb, p2_bit_slice_1462} + p2_umul_1466;

  // Registers for pipe stage 3:
  reg [31:0] p3_add_1467;
  reg [31:0] p3_add_1576;
  reg [31:0] p3_add_1577;
  reg [31:0] p3_add_1578;
  reg [31:0] p3_add_1579;
  reg [31:0] p3_add_1580;
  reg [31:0] p3_add_1581;
  reg [31:0] p3_add_1582;
  always_ff @ (posedge clk) begin
    p3_add_1467 <= p2_add_1467;
    p3_add_1576 <= p3_add_1576_comb;
    p3_add_1577 <= p3_add_1577_comb;
    p3_add_1578 <= p3_add_1578_comb;
    p3_add_1579 <= p3_add_1579_comb;
    p3_add_1580 <= p3_add_1580_comb;
    p3_add_1581 <= p3_add_1581_comb;
    p3_add_1582 <= p3_add_1582_comb;
  end

  // ===== Pipe stage 4:
  wire [31:0] p4_add_1599_comb;
  wire [31:0] p4_add_1600_comb;
  wire [31:0] p4_add_1601_comb;
  wire [31:0] p4_add_1602_comb;
  wire [31:0] p4_add_1603_comb;
  wire [31:0] p4_add_1604_comb;
  assign p4_add_1599_comb = p3_add_1467 + p3_add_1576;
  assign p4_add_1600_comb = p3_add_1577 + p3_add_1578;
  assign p4_add_1601_comb = p3_add_1579 + p3_add_1580;
  assign p4_add_1602_comb = p3_add_1581 + p3_add_1582;
  assign p4_add_1603_comb = p4_add_1599_comb + p4_add_1600_comb;
  assign p4_add_1604_comb = p4_add_1601_comb + p4_add_1602_comb;

  // Registers for pipe stage 4:
  reg [31:0] p4_add_1603;
  reg [31:0] p4_add_1604;
  always_ff @ (posedge clk) begin
    p4_add_1603 <= p4_add_1603_comb;
    p4_add_1604 <= p4_add_1604_comb;
  end

  // ===== Pipe stage 5:
  wire [31:0] p5_add_1609_comb;
  assign p5_add_1609_comb = p4_add_1603 + p4_add_1604;

  // Registers for pipe stage 5:
  reg [31:0] p5_add_1609;
  always_ff @ (posedge clk) begin
    p5_add_1609 <= p5_add_1609_comb;
  end
  assign out = p5_add_1609;
endmodule
