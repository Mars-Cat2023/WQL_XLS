#!/bin/bash

# Set the environment variables
export RES="./xls_results/case3_dot_product"
export FILE_NAME="matrix_mul_10"
export BAZEL_BIN="../xls/bazel-bin"

# echo "Folder_Name = ${RES}"
# echo "  File_Name = ${FILE_NAME}"
# echo "------------------------------------------------------------"

# Check if the first argument is provided
if [ -z "$1" ]; then
    echo "Error: Please provide 'build' or 'clean' as the first parameter."
    exit 1
fi

# Proceed based on the first parameter
if [ "$1" == "build" ]; then
    echo "Building..."

    # Run the commands
    ${BAZEL_BIN}/xls/contrib/xlscc/xlscc "${RES}/${FILE_NAME}.cc" > "${RES}/${FILE_NAME}.ir"
    ${BAZEL_BIN}/xls/tools/opt_main "${RES}/${FILE_NAME}.ir" > "${RES}/${FILE_NAME}.opt.ir"

    ${BAZEL_BIN}/xls/tools/codegen_main "${RES}/${FILE_NAME}.opt.ir" \
        --generator=pipeline \
        --delay_model="asap7" \
        --output_verilog_path="${RES}/${FILE_NAME}_pipeline.v" \
        --module_name=${FILE_NAME}_pipeline \
        --top=Run \
        --pipeline_stages=5 \
        --flop_inputs=true \
        --flop_outputs=true

    ${BAZEL_BIN}/xls/tools/codegen_main "${RES}/${FILE_NAME}.opt.ir" \
        --generator=combinational \
        --delay_model="unit" \
        --output_verilog_path="${RES}/${FILE_NAME}_comb.v" \
        --module_name=${FILE_NAME}_comb \
        --top=Run

    # Display the contents of the generated Verilog file
    # cat "${RES}/${FILE_NAME}_pipeline.v"
    # cat "${RES}/${FILE_NAME}_comb.v"

    echo "Building Completed!!!"

elif [ "$1" == "clean" ]; then
    rm ${RES}/${FILE_NAME}.ir ${RES}/${FILE_NAME}.opt.ir ${RES}/${FILE_NAME}*.v
    echo "Cleaning Completed!!!"

else
    echo "Error: Unknown command '$1'. Use 'build' or 'clean'."
    exit 1
fi

unset RES
unset FILE_NAME
unset BAZEL_BIN