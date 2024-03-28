
# Clear previous simulations
.main clear
# Compile the testbench
vcom -check_synthesis -work work -2002 -explicit -vopt ../tb/full_adder_testbench.v
# Simulate the compiled testbench
vsim -voptargs=+acc work.full_adder_testbench -t ps
# Configure the wave window
view wave -height 900 -width 1600 -undock
configure wave -gridperiod {10 ns}
configure wave -griddelta {50 ns}
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color #614051 -height 40 -label a         uut/a
add wave -noupdate -color #614051 -height 40 -label b         uut/b
add wave -noupdate -color #EAC117 -height 14 -divider input_signals
add wave -noupdate -color #FFFF00 uut/sum
add wave -noupdate -color #FFFF00 uut/carry_out
add wave -noupdate -color #EAC117 -height 14 -divider output_signals
TreeUpdate [SetDefaultTree]
configure wave -namecolwidth 350
configure wave -valuecolwidth 20
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 10
configure wave -griddelta 20
configure wave -timeline 0
configure wave -timelineunits us
update
run 100 ns # Adjust simulation time as needed
wave zoom full

configure wave -gridperiod 10
configure wave -griddelta 20
configure wave -timeline 0
configure wave -timelineunits us

update

run 100 ns # Adjust simulation time as needed
wave zoom full
