vcom -93 -work work {../../parallel2serial.vhd}
vsim work.parallel2serial

add wave sim:/parallel2serial/*
force -freeze sim:/parallel2serial/a 1 0
force -freeze sim:/parallel2serial/c 1 0
force -freeze sim:/parallel2serial/e 1 0
force -freeze sim:/parallel2serial/f 1 0
force -freeze sim:/parallel2serial/g 1 0
force -freeze sim:/parallel2serial/b 0 0
force -freeze sim:/parallel2serial/d 0 0
run 0.5 ns
force -freeze sim:/parallel2serial/save 1 0
run 0.5 ns