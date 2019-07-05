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

