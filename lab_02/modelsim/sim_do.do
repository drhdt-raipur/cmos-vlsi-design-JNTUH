# ModelSim Do File for Simulating Encoder and Decoder Design
.main clear
vsim -voptargs=+acc work.tb_encoder_decoder  -t ps
view wave -height 900 -width 1600 -undock
configure wave -gridperiod {10 ns}
configure wave -griddelta {50 ns}
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate      -color #EAC117 -height 14 -divider "encoder_8to3"
add wave -noupdate -hex -color #614051 -height 40 -label in_encoder enc/in
add wave -noupdate -hex -color #614051 -height 40 -label out_encoder enc/out

add wave -noupdate      -color #EAC117 -height 14 -divider "encoder_8to3_priority"
add wave -noupdate -hex -color #614051 -height 40 -label in_encoder enc_p/in
add wave -noupdate -hex -color #EAC117 -height 40 -label out_encoder enc_p/out

add wave -noupdate      -color #EAC117 -height 14 -divider "decoder_2to4"
add wave -noupdate -hex -color #EAC117 -height 40 -label in_decoder dec/in
add wave -noupdate -hex -color #FFFF00 -height 40 -label out_decoder dec/out

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

run 100ns
wave zoom full

add list -in enc/*
add list -out enc/*
add list -in enc_p/*
add list -out enc_p/*
add list -in dec/*
add list -out dec/*
write tssi port_list

