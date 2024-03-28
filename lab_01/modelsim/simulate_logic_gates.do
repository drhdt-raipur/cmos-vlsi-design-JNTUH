# simulate_logic_gates.do
# This ModelSim do file is used to simulate the logic gates design with "-voptargs=+acc" argument.

# Compile the Verilog files
# vlog -sv logic_gates.v logic_gates_tb.v

# Simulate the design with optimization and access arguments
vsim logic_gates_tb -voptargs=+acc 

# Add waveforms to Wave window
add wave -position end sim:/logic_gates_tb/*

# Run the simulation
run 150ns

# Zoom to fit
wave zoom full
