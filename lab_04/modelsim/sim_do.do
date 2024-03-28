.main clear
vsim -voptargs=+acc work.tb_binary_to_gray  -t ps
view wave -height 900 -width 1600 -undock
configure wave -gridperiod {10 ns}
configure wave -griddelta {50 ns}
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -hex -color #614051 -height 40 -label binary_in uut/binary_in
add wave -noupdate -hex -color #614051 -height 40 -label gray_out uut/gray_out

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
run 180ns
wave zoom full
add list -in uut/*
write tssi port_list
