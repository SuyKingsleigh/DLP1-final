add wave sim:/main/*
force -freeze sim:/main/main_clk 1 0, 0 {62 ps} -r 125
force -freeze sim:/main/sel 11 0
run 1 ns
force -freeze sim:/main/a 0 0
force -freeze sim:/main/b 0 0
force -freeze sim:/main/c 1 0
force -freeze sim:/main/d 1 0
force -freeze sim:/main/e 0 0
force -freeze sim:/main/f 0 0
force -freeze sim:/main/g 1 0
force -freeze sim:/main/save 1 0
force -freeze sim:/main/parity_mode 0 0
run 10 ns


