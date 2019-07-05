vcom -93 -work work {../../input2ssd.vhd}
vsim work.input2ssd(rtl)
add wave sim:/input2ssd/*

force -freeze sim:/input2ssd/ascii 0110000 0
run 0.5 ns
force -freeze sim:/input2ssd/ascii 0110001 0
run 0.5 ns
force -freeze sim:/input2ssd/ascii 0110010 0
run 0.5 ns
force -freeze sim:/input2ssd/ascii 0110011 0
run 0.5 ns
force -freeze sim:/input2ssd/ascii 0110100 0
run 0.5 ns
force -freeze sim:/input2ssd/ascii 1000001 0
run 0.5 ns
force -freeze sim:/input2ssd/ascii 1001000 0
run 0.5 ns
force -freeze sim:/input2ssd/ascii 1001111 0
run 0.5 ns

