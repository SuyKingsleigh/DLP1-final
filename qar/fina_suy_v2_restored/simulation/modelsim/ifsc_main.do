vcom -93 -work work {../../selector.vhd}
vcom -93 -work work {../../parallel2serial.vhd}
vcom -93 -work work {../../parity_generator.vhd}
vcom -93 -work work {../../baudrate_generator.vhd}
vcom -93 -work work {../../main.vhd}

vsim work.main
vsim work.main 
add wave sim:/main/*

# letra i

force -freeze sim:/main/a 1 0
force -freeze sim:/main/b 0 0
force -freeze sim:/main/c 0 0
force -freeze sim:/main/d 1 0
force -freeze sim:/main/e 0 0
force -freeze sim:/main/f 0 0
force -freeze sim:/main/g 1 0
force -freeze sim:/main/main_rst 1 0, 0 0.5 ns
force -freeze sim:/main/sel 11 0
force -freeze sim:/main/parity_mode 0 0
force -freeze sim:/main/main_clk 1 0, 0 {125 ps} -r 250
run 2 ns
force -freeze sim:/main/save 1 0
run 30 ns
force -freeze sim:/main/save 0 0 
run 5 ns

# letra f

force -freeze sim:/main/a 1 0
force -freeze sim:/main/b 0 0
force -freeze sim:/main/c 0 0
force -freeze sim:/main/d 0 0
force -freeze sim:/main/e 1 0
force -freeze sim:/main/f 1 0
force -freeze sim:/main/g 0 0
force -freeze sim:/main/save 1 0
run 30 ns
force -freeze sim:/main/save 0 0 
run 5 ns

# letra s

force -freeze sim:/main/a 1 0
force -freeze sim:/main/b 0 0
force -freeze sim:/main/c 1 0
force -freeze sim:/main/d 0 0
force -freeze sim:/main/e 0 0
force -freeze sim:/main/f 1 0
force -freeze sim:/main/g 1 0
force -freeze sim:/main/save 1 0
run 30 ns
force -freeze sim:/main/save 0 0 
run 5 ns


# letra c

force -freeze sim:/main/a 1 0
force -freeze sim:/main/b 0 0
force -freeze sim:/main/c 0 0
force -freeze sim:/main/d 0 0
force -freeze sim:/main/e 0 0
force -freeze sim:/main/f 1 0
force -freeze sim:/main/g 1 0
force -freeze sim:/main/save 1 0
run 30 ns
force -freeze sim:/main/save 0 0 
run 5 ns


