vcom -93 -work work {../../transmitter.vhd}

vsim work.transmitter

add wave sim:/transmitter/*
force -freeze sim:/transmitter/clk 1 0, 0 {125 ps} -r 250
force -freeze sim:/transmitter/rst 1 0, 0 0.5 ns
force -freeze sim:/transmitter/a 01101111 0
force -freeze sim:/transmitter/send 0 0, 1 1 ns, 0 4 ns
run 10 ns


