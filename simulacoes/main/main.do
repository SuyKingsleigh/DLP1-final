vcom -93 -work work {../../input2ssd.vhd}
vcom -93 -work work {../../parallel2serial.vhd}
vcom -93 -work work {../../parity_generator.vhd}
vcom -93 -work work {../../baudrate_generator.vhd}
vcom -93 -work work {../../main.vhd}
vcom -93 -work work {../../transmitter.vhd}
vsim work.main(rtl) 
add wave sim:/main/*
force -freeze sim:/main/a 1 0
force -freeze sim:/main/b 0 0
force -freeze sim:/main/c 0 0
force -freeze sim:/main/d 0 0
force -freeze sim:/main/e 0 0
force -freeze sim:/main/f 1 0
force -freeze sim:/main/g 1 0
force -freeze sim:/main/main_rst 1 0, 0 0.5 ns
force -freeze sim:/main/main_clk 1 0, 0 {125 ps} -r 250
force -freeze sim:/main/parity_mode 0 0
force -freeze sim:/main/sel 11 0
force -freeze sim:/main/save 0 0, 1 2 ns
run 50 ns

