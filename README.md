# VLSI Projects

A collection of Verilog projects and exercises.

## Modules

### Adders

*   **`adder_4bit_behavioral.v`**: A 4-bit behavioral adder. Includes a testbench within the file.
*   **`ripple_adder_4bit_dataflow.v`**: A 4-bit ripple-carry adder implemented in a dataflow style. Includes a testbench within the file.
*   **`adder8bit.v`**: An 8-bit adder.
    *   **Testbench**: `adder_testbench.v`
*   **`half_adder.v` / `half_adder_structrual.v`**: A structural half-adder.
    *   **Testbench**: `half_adder_Tb.v`

### Multiplexers

*   **`mux_4x_nbit.v`**: A parameterized N-bit 4-to-1 multiplexer. Includes a testbench within the file.
*   **`mux_4x_nbit1.v`**: Another N-bit 4-to-1 multiplexer.
    *   **Testbench**: `tb_mux_4x_nbit.v`
*   **`mux.v`**: A 2-to-1 multiplexer used in the `Comp_mul_2bit` module.

### Flip-Flops

*   **`d_ff_sync_rstn.v`**: A D-type flip-flop with a synchronous active-low reset.
    *   **Testbench**: `tb_d_dff_rstn.v`

### Combinational Logic

*   **`Comp_mul_2bit.v`**: A module that acts as either a 2-bit comparator or a 2x2 multiplier based on a selection input.
    *   **Components**: `ROM_Comp.v`, `ROM_Multiplier.v`, `mux.v`
    *   **Testbench**: `tb_comp_mul_2bit.v`
*   **`Bcd_conversion.v`**: A binary to BCD converter.
*   **`ROM_BIN_BCD.v`**: A top-level module for binary to BCD conversion.

## Examples and Assignments

This directory also contains several smaller examples and assignments demonstrating various Verilog concepts.

*   `Assgmnet1.v`: Displays a message in the console.
*   `Assignment_2_sumprod.v`: Demonstrates `integer` and `real` data types.
*   `bitwise_ope.v`: Example of bitwise operators.
*   `hello_world.v`: A simple "Hello World" example.
*   `logical_operators_usage.v`: Demonstrates logical operators and `while` loops.
*   `multiple_procedures_assign3.v`: Example of multiple `always` and `initial` blocks.
*   `procedures_updated.v`: Demonstrates different procedural blocks and assignments.
*   `reduction_op.v`: Example of reduction operators.
*   `relational_op.v`: Example of relational operators.
*   `Vector_ex.v`: Demonstrates vector declaration, bit-slicing, and concatenation.
*   `waveforms.v`: A simple module to generate waveforms.