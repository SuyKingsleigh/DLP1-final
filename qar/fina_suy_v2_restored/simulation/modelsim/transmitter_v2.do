vcom -93 -work work {../../transmitter.vhd}

vsim work.transmitter

add wave sim:/transmitter/*
force -freeze sim:/transmitter/clk 1 0, 0 {0.5 ns} -r 1 ns
force -freeze sim:/transmitter/rst 1 0, 0 0.1 ns
force -freeze sim:/transmitter/a 01010101 0
force -freeze sim:/transmitter/send 0 0, 1 3.8 ns, 0 4.2 ns
run 32 ns


