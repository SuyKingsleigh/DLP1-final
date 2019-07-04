vcom -93 -work work {../../parity_generator.vhd}

vsim work.parity_generator

add wave sim:/parity_generator/*
force -freeze sim:/parity_generator/parity_mode 0 0
force -freeze sim:/parity_generator/data 0000111 0
run 0.5ns
force -freeze sim:/parity_generator/data 0001111 0
run 0.5ns
force -freeze sim:/parity_generator/parity_mode 1 0
run 0.5ns
force -freeze sim:/parity_generator/data 0000111 0
run 0.5ns


