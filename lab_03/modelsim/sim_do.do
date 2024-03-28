# Initialize ModelSim and compile the designs
.main clear
vsim -voptargs=+acc work.testbench  -t ps
view wave -height 900 -width 1600 -undock
configure wave -gridperiod {10 ns}
configure wave -griddelta {50 ns}
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate      -color #EAC117 -height 14 -divider "mux_8to1"
add wave -noupdate -hex -color #614051 -height 40 -label mux_sel      uut_mux/sel
add wave -noupdate -hex -color #614051 -height 40 -label mux_in      uut_mux/in
add wave -noupdate -hex -color #FFFF00 -height 40 -label mux_out       uut_mux/out
add wave -noupdate      -color #EAC117 -height 14 -divider "demux_1to8"
add wave -noupdate -hex -color #614051 -height 40 -label demux_sel      uut_demux/sel
add wave -noupdate -hex -color #614051 -height 40 -label demux_in      uut_demux/in
add wave -noupdate -hex -color #FFFF00 -height 40 -label demux_out       uut_demux/out

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

run 80ns
wave zoom full

add list -in uut_mux/*
add list -out uut_mux/*
add list -in uut_demux/*
add list -out uut_demux/*
write tssi port_list
