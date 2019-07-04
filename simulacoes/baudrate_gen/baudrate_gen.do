vcom -93 -work work {../../baudrate_generator.vhd}
vsim work.baudrate_generator
add wave sim:/baudrate_generator/*
force -freeze sim:/baudrate_generator/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/baudrate_generator/sel 11 0
run 20 ns