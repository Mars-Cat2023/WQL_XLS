#!/bin/bash

# Set the environment variable RES
export RES="./xls_results/case3_dot_product"

# Run the commands
../xls/bazel-bin/xls/contrib/xlscc/xlscc "$RES/dot_10.cc" > "$RES/dot_10.ir"
../xls/bazel-bin/xls/tools/opt_main "$RES/dot_10.ir" > "$RES/dot_10.opt.ir"

../xls/bazel-bin/xls/tools/codegen_main "$RES/dot_10.ir" \
      --generator=pipeline \
      --delay_model="asap7" \
      --output_verilog_path="$RES/dot_10_pipeline.v" \
      --module_name=dot_10_pipeline \
      --top=Run \
      --pipeline_stages=5 \
      --flop_inputs=true \
      --flop_outputs=true

../xls/bazel-bin/xls/tools/codegen_main "$RES/dot_10.ir" \
      --generator=combinational \
      --delay_model="unit" \
      --output_verilog_path="$RES/dot_10_comb.v" \
      --module_name=dot_10_comb \
      --top=Run

# Display the contents of the generated Verilog file
# cat "$RES/dot_10_pipeline.v"
# cat "$RES/dot_10_comb.v"