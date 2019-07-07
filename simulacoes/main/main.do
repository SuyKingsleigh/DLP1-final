vcom -93 -work work {../../input2ssd.vhd}
vcom -93 -work work {../../parallel2serial.vhd}
vcom -93 -work work {../../parity_generator.vhd}
vcom -93 -work work {../../baudrate_generator.vhd}
vcom -93 -work work {../../selector.vhd}
vcom -93 -work work {../../main.vhd}

vsim work.main 
do wave.do
force -freeze sim:/main/a 1 0
force -freeze sim:/main/b 0 0
force -freeze sim:/main/c 0 0
force -freeze sim:/main/d 0 0
force -freeze sim:/main/e 1 0
force -freeze sim:/main/f 1 0
force -freeze sim:/main/g 1 0
force -freeze sim:/main/main_rst_in 0 0, 1 0.5 ns
force -freeze sim:/main/save_in 1 0, 0 1 ns, 1 3 ns
force -freeze sim:/main/sel 11 0
force -freeze sim:/main/parity_mode 0 0
force -freeze sim:/main/main_clk 1 0, 0 {125 ps} -r 250
run 40 ns