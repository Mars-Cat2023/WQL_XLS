#!/bin/bash

# Set the environment variable RES
export RES="./xls_results/case2_0_test_unroll"

# Run the commands
../xls/bazel-bin/xls/contrib/xlscc/xlscc "$RES/0_test_unroll.cc" > "$RES/0_test_unroll.ir"
../xls/bazel-bin/xls/tools/opt_main "$RES/0_test_unroll.ir" > "$RES/0_test_unroll.opt.ir"

../xls/bazel-bin/xls/tools/codegen_main "$RES/0_test_unroll.opt.ir" \
      --generator=pipeline \
      --delay_model="asap7" \
      --output_verilog_path="$RES/0_test_unroll.v" \
      --module_name=xls_test_unroll \
      --top=test_unroll \
      --pipeline_stages=5 \
      --flop_inputs=true \
      --flop_outputs=true

# Display the contents of the generated Verilog file
# cat "$RES/0_test_unroll.v"
