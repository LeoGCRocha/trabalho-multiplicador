transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier1/somadorsubtrator.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier1/registrador_r.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier1/registrador.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier1/mux2para1.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier1/multiplier_pkg.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier1/igualazero.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier1/bo.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier1/bc.vhd}
vcom -93 -work work {/home/kuru/UFSC/SD/QuartusProjects/TP/multiplier1/multiplier.vhd}

