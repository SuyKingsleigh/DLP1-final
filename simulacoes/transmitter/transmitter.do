vcom -93 -work work {../../transmitter.vhd}

vsim work.transmitter

add wave sim:/transmitter/*
force -freeze sim:/transmitter/clk 1 0, 0 {125 ps} -r 250
force -freeze sim:/transmitter/rst 1 0
force -freeze sim:/transmitter/a 01101111 0
run 0.5 ns
force -freeze sim:/transmitter/rst 0 0
run 0.5 ns
force -freeze sim:/transmitter/send 1 0
run 3 ns
force -freeze sim:/transmitter/send 0 0
run 3 ns
run 3 ns


