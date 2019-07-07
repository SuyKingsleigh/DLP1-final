onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /main/a
add wave -noupdate /main/b
add wave -noupdate /main/c
add wave -noupdate /main/d
add wave -noupdate /main/e
add wave -noupdate /main/f
add wave -noupdate /main/g
add wave -noupdate /main/save_in
add wave -noupdate /main/main_rst_IN
add wave -noupdate /main/main_clk
add wave -noupdate /main/parity_mode
add wave -noupdate /main/sel
add wave -noupdate -divider output
add wave -noupdate /main/tx
add wave -noupdate /main/baudrate
add wave -noupdate -divider Displays
add wave -noupdate /main/d0
add wave -noupdate /main/d1
add wave -noupdate /main/d2
add wave -noupdate /main/d3
add wave -noupdate /main/d4
add wave -noupdate /main/d5
add wave -noupdate /main/d6
add wave -noupdate /main/d7
add wave -noupdate /main/parity_mode_out
add wave -noupdate /main/paridade
add wave -noupdate /main/led
add wave -noupdate /main/led_clk
add wave -noupdate /main/saved_sign
add wave -noupdate /main/ascii_sign
add wave -noupdate /main/ssd_sign
add wave -noupdate /main/parity_sign
add wave -noupdate /main/baud_rate_sign
add wave -noupdate /main/led_sign
add wave -noupdate /main/parity_mode_sign
add wave -noupdate /main/serial2parallel_sign
add wave -noupdate /main/main_rst
add wave -noupdate /main/save
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 126
configure wave -valuecolwidth 119
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {38197 ps}