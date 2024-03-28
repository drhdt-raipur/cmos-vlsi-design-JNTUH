
.main clear
vsim -voptargs=+acc work.comparator_tb  -t ps
view wave -height 900 -width 1600 -undock
configure wave -gridperiod {10 ns}
configure wave -griddelta {50 ns}
onerror {resume}
quietly WaveActivateNextPane {} 0  
add wave -noupdate -hex -color #614051 -height 40 -label a      uut/a
add wave -noupdate -hex -color #614051 -height 40 -label b      uut/b
add wave -noupdate -hex -color #FF0000 -height 20 -label gt     uut/gt
add wave -noupdate -hex -color #00FF00 -height 20 -label lt     uut/lt
add wave -noupdate -hex -color #0000FF -height 20 -label eq     uut/eq


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

run 50ns
wave zoom full
