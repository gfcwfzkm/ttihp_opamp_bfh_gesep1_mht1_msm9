# XSchem Schematics

This directory contains the XSchem schematic files for the op-amp and differential pair designs.

## Main Design Files

- **op_amp.sch**: Operational amplifier main schematic
- **op_amp.sym**: Op-amp symbol for hierarchical use
- **diff_pair.sch**: Differential pair schematic
- **diff_pair.sym**: Differential pair symbol
- **diff_pair_ext.sym**: Extracted differential pair symbol (with parasitics)
- **op_amp_input_curr_mirror.sch**: Input current mirror circuit, a left-over of an earlier project stage
- **op_amp_input_curr_mirror.sym**: Input current mirror symbol, a left-over of an earlier project stage
- **pcasc.sch**: P-channel cascode circuit, a left-over of an earlier project stage

## Testbench Files

Note that these are simplified testbenches, used to validate basic operation and functionality. The testbenches used for verification can be found in [tb_lib](../tb_lib).

- **op_amp_tb.sch**: Op-amp DC testbench
- **op_amp_tb_ac.sch**: Op-amp AC analysis testbench
- **tb_diff_pair.sch**: Differential pair testbench
- **tb_input_curr_mirror.sch**: Current mirror testbench, a left-over of an earlier project stage

## Simulation Outputs

- **simulations/**: Directory containing generated SPICE netlists and simulation results, which can be loaded in the testbenches. This avoids unnessesary simulations to view the data.

## Usage

To open a schematic in XSchem, ensure that the current working directory is the same as the to-be-viewed schematic:

```bash
cd xschem/
xschem op_amp.sch
```

Testbenches contain additional UI buttons in the schematic to perform various actions like "Run Simulation" or "Load Waveforms". These elements can be activated by holding down the `CTRL` key while left-clicking it with the mouse.
