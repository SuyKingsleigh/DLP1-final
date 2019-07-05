transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aluno/DLP1-final/qar/fina_suy_v2_restored/input2ssd.vhd}
vcom -93 -work work {/home/aluno/DLP1-final/qar/fina_suy_v2_restored/parallel2serial.vhd}
vcom -93 -work work {/home/aluno/DLP1-final/qar/fina_suy_v2_restored/parity_generator.vhd}
vcom -93 -work work {/home/aluno/DLP1-final/qar/fina_suy_v2_restored/baudrate_generator.vhd}
vcom -93 -work work {/home/aluno/DLP1-final/qar/fina_suy_v2_restored/main.vhd}
vcom -93 -work work {/home/aluno/DLP1-final/qar/fina_suy_v2_restored/transmitter.vhd}

vsim work.main
do wave.do

force -freeze sim:/main/a 1 0
force -freeze sim:/main/b 0 0
force -freeze sim:/main/c 1 0
force -freeze sim:/main/d 0 0
force -freeze sim:/main/e 1 0
force -freeze sim:/main/f 1 0
force -freeze sim:/main/g 0 0
force -freeze sim:/main/main_rst_IN 0 0, 1 0.1 ns
force -freeze sim:/main/sel 11 0
force -freeze sim:/main/parity_mode 0 0
force -freeze sim:/main/main_clk 1 0, 0 {0.5 ns} -r 1 ns
force -freeze sim:/main/save_in 1 0, 0 1.8 ns, 1 24.5 ns
run 60 ns